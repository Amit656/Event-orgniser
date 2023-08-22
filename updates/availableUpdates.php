 <?php
 //This script is used when the QRS-Connect Hoho goes to check for updates.
 //Just enter the versions for alpha and beta... if they don't exist they will set to 0 and "".

$alphaVersion = "0.110";
$betaVersion = "";

$checkUpdate = isset($_GET['checkUpdate'])?$_GET['checkUpdate']:0;
if($checkUpdate==1){
	 
	//Array for Available;
	$updateInfo  = [];
	//Alpha Update
	$updateInfo['availableVersion'] = $alphaVersion;
	$updateInfo['availableVersionLocation'] = "update128K.$alphaVersion.qup";
	if(!file_exists($updateInfo['availableVersionLocation'])){
		$updateInfo['availableVersion'] = 0.00;
		$updateInfo['availableVersionLocation'] = "";
	}
	
	//Beta Update
	$updateInfo['availableBetaVersion'] = $betaVersion;
	$updateInfo['availableBetaVersionLocation'] = "update128K.$betaVersion.qup";
	if(!file_exists($updateInfo['availableBetaVersionLocation'])){
		$updateInfo['availableBetaVersion'] = 0.00;
		$updateInfo['availableBetaVersionLocation'] = "";
	}
	//Currently these updates have to reside in the updates folder.  Passing other paths is a bad idea.
	//"https://www.qrsmusic.com/downloads/media_patch_2014-03-21.zip"  <-- If passing URL this is an issue in the downloader script.

	//Response
	//header("Content-Type: application/jsonp");
	header("Content-Type: application/javascript");
	echo $_GET['callback'] . '(' . json_encode($updateInfo) . ')';

  }
?>