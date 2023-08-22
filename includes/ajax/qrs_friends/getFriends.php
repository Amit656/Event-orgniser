<?php
/**
 * ajax -> chat -> live
 * 
 * @package Sngine
 * @author Zamblek 
	@edited Yost
 */

// fetch bootstrap
require('../../../bootstrap.php');

// check AJAX Request
$token = (isset($_POST['tokenApi'])) ? $_POST['tokenApi'] : false;
if($token != '643097f1-e2cd-4262-97f5-0b1c0d2c5bdc'){
	is_ajax();
} 

// check user logged in
if(!$user->_logged_in) {
    modal(LOGIN);
}

// get chat live updates
try {
	// initialize the return array
	$return = array();

	/* get friends */
	$friends = $user->get_friends2($user->_data['user_id']);
	//Use this to check the mqtt for subscribed users.

	/* for each friend -- get device -- */
	foreach($friends as $key => $value){
		if(isset($value['user_id'])){
			$friends[$key]['device'] = $user->getDevice($value['user_id'],true);
		}
	}		
	$return['friends'] = $friends;

	/* get the device status */
	$return['device'] = $user->getDevices($user->_data['user_id'],true);
	
	//Perhaps this should just pass to the device their friend list.
	//Create a message of the userStatus.
	//$mosqCmd = sprintf("/usr/bin/mosquitto_pub -h 127.0.0.1 -r -p 1883 -u qrs -P mqtt -t userStatus/%s/%s -m %s",$userid,$device,$status );
	//exec( $mosqCmd );
	//$return['gear']   = $user->getGear($user->_data['user_id'],true);
	
	// return & exit
	return_json($return);

} catch (Exception $e) {
	modal(ERROR, __("Error"), $e->getMessage());
}

?>