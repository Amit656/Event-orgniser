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

if( !isset($_POST['gear']) ) {
//	_error(400);
}
// get data live updates
try {
	// initialize the return array
	$return = array();

	//Get the gear
	$return['gear'] = $user->getGear(  $user->_data['user_id'], true );
	
	//Check The stats against each gear?
	return_json($return);
	

} catch (Exception $e) {
	modal(ERROR, __("Error"), $e->getMessage());
}


?>