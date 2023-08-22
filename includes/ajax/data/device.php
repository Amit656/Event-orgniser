<?php
/**
 * ajax -> data -> live
 * 
 * @package Sngine
 * @author Zamblek / AY Duplicated.  QRSMUSIC
 */

// fetch bootstrap
require('../../../bootstrap.php');

// check AJAX Request
//is_ajax();

// check user logged in
if(!$user->_logged_in) {
    modal(LOGIN);
} 

if( !isset($_POST['device']) ) {
//	_error(400);
}
// get data live updates
try {
	// initialize the return array
	$return = array();

	//Get the Devices
	$return['devices'] = $user->getDevices(  $user->_data['user_id'], true );
	
	//Check The stats against each device?
	foreach($return['devices'] as $key => $row){
		//Get the Music Data
		$stat = $user->getMusicStats(  $user->_data['user_id'], $row['serial'],	true );
		//$return['devices'][$key]['stats'] = $stat; 
		$return['devices'][$key]['songCount'] = $stat['songCount'];
		$return['devices'][$key]['notesOn'] = $stat['notesOn'];
		$return['devices'][$key]['notesOff'] = $stat['notesOff'];
		$return['devices'][$key]['pedalsOn'] = $stat['pedalsOn'];
		$return['devices'][$key]['pedalsOff'] = $stat['pedalsOff'];
		$return['devices'][$key]['totalTime'] = $stat['totalTime'];
		
		//array_push($return['devices'][$key],$user->getMusicStats(  $user->_data['user_id'], $row['serial'],	true ));
	}
	//Get the All Music Data
	$return['stats'] = $user->getMusicStats(  $user->_data['user_id'],	false,true );

	// return & exit
	return_json($return);

} catch (Exception $e) {
	modal(ERROR, __("Error"), $e->getMessage());
}


?>