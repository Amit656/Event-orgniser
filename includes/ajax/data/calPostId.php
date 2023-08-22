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
is_ajax();

// check user logged in
if(!$user->_logged_in) {
    modal(LOGIN);
}


// valid inputs
/* if (last_request || last_message || last_notification) not set */
if( !isset($_POST['source']) ) {
	_error(400);
}

// get data live updates
try {

	// initialize the return array
	$return = array();

	// check for calendar
	if( isset($_POST['source']) ) {
		
		$data = $user->getPostId( $_POST['source'], true );
		
		if($data) {
			$return = $data;
		}
	}
	

	// return & exit
	return_json($return);

} catch (Exception $e) {
	modal(ERROR, __("Error"), $e->getMessage());
}


?>