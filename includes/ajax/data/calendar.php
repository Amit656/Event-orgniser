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
if( !isset($_POST['calendar']) || !isset($_POST['startDate']) || !isset($_POST['endDate']) ) {
	_error(400);
}

// get data live updates
try {

	// initialize the return array
	$return = array();

	// check for calendar
	if( isset($_POST['calendar']) ) {
		//Set Calendar base 0 
		$calendar = $_POST['calendar'];//- 1;
		
		//get start/end times.
		$startDate = str_replace('-', '/', $_POST['startDate'] );
		$startDate =  explode("T",  $startDate )[0]; 
		$startDate = new DateTime( $startDate ); // format: MM/DD/YYYY
		//$startDate = $date->format('U');
		$startDate = $startDate->format('Y-m-d H:i:s');
		
		$endDate = str_replace('-', '/', $_POST['endDate'] );
		$endDate =  explode("T",  $endDate )[0];
		$endDate = new DateTime( $endDate ); // format: MM/DD/YYYY
		$endDate = $endDate->format('Y-m-d H:i:s');
		
		$data = $user->getUserCalendars(  $user->_data['user_id'], $_POST['calendar'],$startDate, $endDate, true );

		if($data) {
			/* assign variables */
			//$smarty->assign('cal', $data);
			/* return */
			$return = $data;
			//$smarty->fetch("ajax.posts.tpl");
		}
	}
	

	// return & exit
	return_json($return);

} catch (Exception $e) {
	modal(ERROR, __("Error"), $e->getMessage());
}


?>