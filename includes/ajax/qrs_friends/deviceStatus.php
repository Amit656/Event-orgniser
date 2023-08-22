<?php
// exec('/usr/bin/mosquitto_sub --help',$out);
// var_dump( $out);

/**
 * ajax -> chat -> live
 * 
 * @package Sngine
 * @author Zamblek 
	@edited Yost
 */

// fetch bootstrap
require('../../../bootstrap.php');

//DATA FROM THE WEBHOOK EMQ WILL PASS TO DATA INPUT.
function jsonData(){
	$json=(file_get_contents('php://input') )?json_decode(file_get_contents('php://input'),true ):"";
	return $json;
}

//Get the File POST Input.  And if none keep $_POST.
$data = jsonData();
if(empty($_POST)){
	$_POST = $data;
}

//BYPASSES LOGIN CHECK!!!  SHOULD ONLY RUN WITH API TOKEN PERHAPS SHOULD ADD ANOTHER TOKEN KEY.

//DEBUG WEBHOOK Write to a file to see what is going on.
//$file = "/var/www/html/includes/ajax/qrs_friends/test.log"; 
//$return['fileWrite']  = file_put_contents($file,json_encode([$_POST,$data['tokenApi'] ]) );

// check AJAX Request
$token = (isset($_POST['tokenApi'])) ? $_POST['tokenApi'] : false;
if($token != '643097f1-e2cd-4262-97f5-0b1c0d2c5bdc'){
	$return['error'] = true;
	return_json($return);
	exit;
} 

// get chat live updates
try {
	// initialize the return array
	$return = array();

	if( isset($_POST['device']) && isset($_POST['isOnline']) ){	
		/* set Online */
		$return['online'] = $user->setDeviceOnline( $_POST['device'],$_POST['isOnline'] ,true);
		/*debug purposes*/
		//$return['fileWrite']  = file_put_contents($file,json_encode( $return ) );
	}
	// return & exit
	return_json($return);

} catch (Exception $e) {
	modal(ERROR, __("Error"), $e->getMessage());
}

?>