<?php /* Function that is run when the upload request is called */
	function upload($response){
		$fileIn = $response;
		$response = [];
		//Gets the last time this file was modified.
		$last_modified = filemtime(__FILE__);
		$response['version'] = "VER|0.3".$last_modified; 
		/*
		
		//Cache File
		$cacheFile = $path_parts["dirname"]."/.".$path_parts["filename"].".json";
		//Check if Cache exists
		if(file_exists($cacheFile)){
			$out =  file_get_contents ( $cacheFile );
			//Validate the version.  If old nevermind the cache... Regen.
			if( strpos( substr($out, 0, 300),$response['version'] )  !== false ){
				return "cached";
			}
		}	
		*/
		
		
		//if( strtolower($path_parts['extension']) =='mid'){
		require('/var/www/html/includes/libs/midi_/midi.class.php');
		
		//Start Time
		//timer("processTimeMsMidi");
		
		$midi = new Midi();
		$midi->importMid($fileIn);
		//Start Time
		
		$xml = $midi->getTxt(0);
		$timeBase = ( 0!== $midi->getTimebase() )?$midi->getTimebase():480;
		$midi = null;
		
		
		//timer("processTimeMsMidi");
		$eventListArr =  preg_split('/\n/', $xml);
		$xml=null;
		
		
		if( isset($response['debug']) ){
			$response['convertXML'] = $eventListArr;
		}
		$eventArr = [];
		//$eventArr['headers']=[];
		$noteOn = 0;
		$noteOff = 0;
		$pedalOn = 0;
		$pedalOff = 0;
		$longestNoteTime = 0;
		$shortestNoteTime = 100000000;
		$longestNoteKey = 0;
		$shortestNoteKey = 0;
		//Add Longest/Shortest CC Events.
		$notesFreq = [];
		$notesDur = [];
		$noteOns = [];
		$noteOffs = [];
		$noteDurations = [];
		$songLength = 0;
		$pedalOns = [];
		$pedalOffs = [];
		$ccDurations = [];
		$tempo = [];
		$timeSig = [];
		$keySig =[];
		$trackCount = 0;
		//$pedalEvents = [];
		/*Define the major/minor keys*/
		$myNotesMajor = ["Cb","Gb","Db","Ab","Eb","Bb","F","C","G","D","A","E","B","F#","C#"];
		$myNotesMinor = ["Ab","Eb","Bb","F","C","G","D","A","E","B","F#","C#","G#","D#","A#"];
		
		$count = 0;
		foreach ($eventListArr as $eventList){
			$newEvent = [];
			/*split midi text*/
			$event = preg_split('/ /', $eventList);
			/* Is a note Event Or Meta Something... */
			if( is_numeric($event[0]) ){
				$newEvent["time"]=intval($event[0]);
			} else {
				$newEvent["header"]=$event[0];
				if($event[0]=='MTrk'){
					$trackCount++;
				}
			}
			
			/*Get Value*/
			$newEvent["value"] = getValue( isset($event[4])?$event[4]:null );
			
			/*Get On off and Count ons/Offs*/
			if(isset($event[1])){
				if( $event[1] == "On" || $event[1] == "Off"){
					if($event[1]=="On" && $newEvent["value"]!=0){
						$noteOn++;
					} else if($event[1]=="Off" || $newEvent["value"]==0){
						$noteOff++;
					}
					$newEvent["state"]=$event[1];
				} else if($event[1] == "Tempo"){
					//if(!isset( $tempo[ $event[0] ] ) ){
					$tempo[$event[0]] = round( ( (60/$event[2])*1000000) ); //$event[0]." "
					//}
				} else if($event[1] == "KeySig"){
					if(!isset( $keySig[ $event[0] ] ) ){
						$keySig[$event[0]] = $event[3]=="minor"?$myNotesMinor[$event[2]+7]." Minor":$myNotesMajor[$event[2]+7]." Major";//.$event[0] ." ".$event[1]." ".$event[2]." ".$trackCount;;
					}
				} else if($event[1] == "TimeSig"){
					if(!isset( $timeSig[ $event[0] ] ) ){
						$timeSig[$event[0]] = $event[2];//$event[0] ." ".$event[1]." ".$event[2]." ".$trackCount;
					}
					
				} else if($event[1] == "SMPTE"){
					$smpte[] = $event[2];
				} else {
					$newEvent["meta"]=$event[1];
				}
			}
			
			/* $channelSplit = isset($event[2])?preg_split('/=/', $event[2]):null;
			$newEvent["channel"]=isset($channelSplit[1])?$channelSplit[1]:null;
			$eventSplit = isset($event[3])?preg_split('/=/', $event[3]):null;
			$eventType=isset($eventSplit[0])?$eventSplit[0]:null ; */
			if(isset($event[2])){
				$channelSplit = preg_split('/=/', $event[2]);
			}
			if(isset($channelSplit[1])){
				$newEvent["channel"]=$channelSplit[1];
			}
			if(isset($event[3])){
				$eventSplit = preg_split('/=/', $event[3]);
			}
			if(isset($eventSplit[0])){
				$eventType=$eventSplit[0];
			}
			
			//Need to Return Time/Channel/Note(Event)
			
			if(isset($event[3]) ){
				if(strpos($event[3], 'n=') !== false){
					$newEvent["note"]= intval($eventSplit[1]);
					if($event[1]=="On" && $newEvent["value"]!=0){
						$noteOns[$newEvent["note"]] = $newEvent["time"];
					} else if($event[1]=="Off" || $newEvent["value"]==0) {
						$noteOffs[$newEvent["note"]][] = $newEvent["time"];
						if(isset($noteOns[$newEvent["note"]])){
							$dur = $newEvent["time"]-$noteOns[$newEvent["note"]];
							if($songLength < $newEvent["time"]){
								$songLength = $newEvent["time"];
							}
							if($dur > $longestNoteTime){
								$longestNoteTime = $dur;
								$longestNoteKey = fromMidi($newEvent["note"]);
							} else if($dur == $longestNoteTime){
								if(strpos($longestNoteKey , fromMidi($newEvent["note"])) === false){
									$longestNoteKey .=",".fromMidi($newEvent["note"]);
								}
							} else if ($dur < $shortestNoteTime){
								$shortestNoteTime = $dur;
								$shortestNoteKey = fromMidi($newEvent["note"]);
							} else if($dur ==$shortestNoteTime){
								if(strpos($shortestNoteKey , fromMidi($newEvent["note"])) === false){
									$shortestNoteKey  .=",".fromMidi($newEvent["note"]);
								}
							} 
							//$noteDurations[ $noteOns[ $newEvent["note"] ] ][ fromMidi($newEvent["note"]) ][] = $dur;
							$noteDurations[ $noteOns[ $newEvent["note"] ] ][ $newEvent["channel"] ][ $newEvent["note"] ][] = $dur;
							unset( $noteOns[$newEvent["note"]]);
						} else {
							//$noteDurations[$newEvent["note"]][] = "No Start Event!";	
						}
					}
				} else if(strpos($event[3], 'c=') !== false){
					//Controller Pedal Events
					$newEvent["event"] = "controller";
					$newEvent["cc"]= intval($eventSplit[1]);
					
					if($newEvent["value"]>0){
						//Pedal On
						$pedalOns[ $newEvent["cc"] ] = $newEvent["time"];
						$pedalOn++;
						$ccDurations[ $pedalOns[ $newEvent["cc"] ] ][ $newEvent["channel"] ][ $newEvent["cc"] ][] = 1;
					} else {
						$dur = isset( $newEvent["time"])?1:$newEvent["time"]-$pedalOns[ $newEvent["cc"] ];
						$dur = ($dur==0)?1:$dur;
						if($songLength < $newEvent["time"]){
							$songLength = $newEvent["time"];
						}
						if( isset( $pedalOns[ $newEvent["cc"] ] ) ){
							$ccDurations[ $pedalOns[ $newEvent["cc"] ] ][ $newEvent["channel"] ][ $newEvent["cc"] ][] = $dur;
						} else {
							$pedalOns[ $newEvent["cc"] ] = $newEvent["time"];
							$pedalOn++;
							$ccDurations[ $pedalOns[ $newEvent["cc"] ] ][ $newEvent["channel"] ][ $newEvent["cc"] ][] = $dur;
						}
						$pedalOff++;
						unset( $pedalOns[ $newEvent["cc"] ] );
					}
				} else {
					$newEvent["event"] = $eventSplit;
				}
			}		
			
			if(isset($newEvent["note"])){
				$notesFreq[$newEvent["note"]] = (isset($notesFreq[$newEvent["note"]]))?$notesFreq[$newEvent["note"]]+1:1;
			}
			$eventArr[] = $newEvent;
			$newEvent = null;
			//if ( strpos($event[3], 'n=') !== false) {
				
			//}			
			$count++;
		}
		$eventListArr = null;
		//foreach($on as $pedalOns){
		//	$ccDurations[ $pedalOns[ $newEvent["cc"] ] ][ $newEvent["channel"] ][ $newEvent["cc"] ][] = $dur;
		//}
		$response['notesSummary'] = findMostPlayed($notesFreq);
		$response['notesSummary']['songLength'] =  $songLength;
		//$response['notesSummary']['songLengthHIS'] = gmdate("H:i:s",$songLength/1000);
		$response['notesSummary']['notesOn'] = $noteOn;
		$response['notesSummary']['notesOff'] = $noteOff;
		$response['notesSummary']['pedalOn'] = $pedalOn;
		$response['notesSummary']['pedalOff'] = $pedalOff;
		$response['notesSummary']['longestNoteTime'] = $longestNoteTime ;
		$response['notesSummary']['longestNoteKey'] = $longestNoteKey;
		$response['notesSummary']['shortestNoteTime'] = ($shortestNoteTime == 100000000)?0:$shortestNoteTime;
		$response['notesSummary']['shortestNoteKey'] = $shortestNoteKey;
		$response['notesSummary']['tempo'] = Empty($tempo)?[120]:$tempo;
		$response['notesSummary']['keySig'] = Empty($keySig)?"C":$keySig;
		$response['notesSummary']['timeSig'] = Empty($timeSig)?"4/4":$timeSig;
		$response['notesSummary']['trackCount'] = Empty($trackCount)?"1":$trackCount;
		$response['notesSummary']['songTimeBase']  = $timeBase;
		  
		//If there are multiple Tempo the msPQ needs calculated to each point.  IE - if 120 from 0-1000 then 1001+ is 114  Each
		if(count($response['notesSummary']['tempo'])>1){
			krsort ( $response['notesSummary']['tempo'] );
			$first = true;
			$totalLength = 0;
			$lastTime = 0;
			foreach($response['notesSummary']['tempo']  as $time => $tmpo){
				if($first){
					//Subtract from end. 
					$sl = $response['notesSummary']['songLength'] - $time;
					$msPq = (60000/( intval($tmpo) * $response['notesSummary']['songTimeBase'] ) );
					$totalLength +=  ($msPq*$sl)/1000;
					$lastTime = $time;
				} else {
					// subtract from last event.
					$sl = ($lastTime-1) - $time;
					$msPq = (60000/( intval($tmpo) * $response['notesSummary']['songTimeBase'] ) );
					$totalLength +=  ($msPq*$sl)/1000;
				}
			}
			$response['notesSummary']['songLengthHIS'] = gmdate("H:i:s", $totalLength );
		} else {
			//MS per Tick 60000 / (BPM * PPQ) (milliseconds).
			$response['notesSummary']['msPQ'] = (60000/( intval($response['notesSummary']['tempo'][0]) * $response['notesSummary']['songTimeBase'] ) );//gmdate("H:i:s",$songLength/1000));
			$response['notesSummary']['songLengthHIS'] = gmdate("H:i:s", ($response['notesSummary']['msPQ']*$response['notesSummary']['songLength'])/1000 );
		}
		//$response['notesSummary']['notesFreq'] = $notesFreq; 
		$response['pedalOns'] = $pedalOns;
		$response['ccDurations'] =$ccDurations;
		$response['noteDurations'] = $noteDurations;
		
		if( isset($response['debug']) ){
			$response['xml'] = $eventArr;
			$response['notesOns'] = $noteOns;
			$response['notesOffs'] = $noteOffs;
		}
		//}
		/*	Evaluate input Midi is Ok Import No Question
			Audio - Evaluate byte size.  
				If needed Complain about space.
				
		*/
		/* Connect to a MsSQL database using driver invocation */
		$response['convertStatus'] = "Uploaded Successfully";
		
		$encoded = json_encode($response);//, JSON_PRETTY_PRINT);
		
		//Write to the cache
		//file_put_contents($cacheFile,$encoded);
		
		//Determine Indexing.
		//file_put_contents( $cacheDir."cache_integrator_all.json" , $encoded );
		//$response["results"] = $encoded;
		return $response;
	}
	
	
	function getValue($event){
		if( strpos($event, 'v=') !== false){
			return intval(preg_split('/=/',$event)[1]);
		} 
		return $event;
	}
	
	function fromMidi($midi){
		$SEMITONES = [ 0, 2, 4, 5, 7, 9, 11 ];
		$CHROMATIC = [ 'C', 'Db', 'D', 'Eb', 'E', 'F', 'F#', 'G', 'Ab', 'A', 'Bb', 'B' ];
		$name = $CHROMATIC[$midi % 12];
		$oct = floor($midi/12) -1;
		return $name . $oct;
	}
	
	function findMostPlayed($noteList){
		$ret = [];
		
		$ret["highestNoteFreq"] = 0;
		$ret["highestNoteFreqPlayed"] = 0;
		$ret["lowestNoteFreq"] = 100000000;
		$ret["lowestNoteFreqPlayed"] = 0;
		foreach( $noteList as $freq => $note) {
			if($note > $ret["highestNoteFreq"] ){
				$ret["highestNoteFreq"] = $note;
				$ret["highestNoteFreqPlayed"] = fromMidi($freq);
			} else if($note == $ret["highestNoteFreq"]){
				if(strpos($ret["highestNoteFreqPlayed"] , fromMidi($freq)) !== false ){
					$ret["highestNoteFreqPlayed"] .=",".fromMidi($freq);
				}
			}
			if($note < $ret["lowestNoteFreq"] ){
				$ret["lowestNoteFreq"] = $note ;
				$ret["lowestNoteFreqPlayed"] = fromMidi($freq);
			}else if($note == $ret["lowestNoteFreq"]){
				if(strpos($ret["lowestNoteFreqPlayed"] , fromMidi($freq)) !== false ){
					$ret["lowestNoteFreqPlayed"] .=",".fromMidi($freq);
				}
			}
		}
		if($ret["lowestNoteFreq"] == 100000000){
			$ret["lowestNoteFreq"] = 0;
		}
		return $ret;
	}
	
	?>