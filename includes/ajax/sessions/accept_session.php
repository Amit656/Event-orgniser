<?php
/**
 * ajax -> admin -> announcements
 * 
 * @package Sngine
 * @author Zamblek
 */

// fetch bootstrap
require('../../../bootstrap.php');

// check AJAX Request
is_ajax();

// check admin logged in
if(!$user->_logged_in) {
	modal(MESSAGE, __("System Message"), __("You don't have the right permission to access this"));
}
// edit announcements
try {
	switch ($_GET['do']) {	
		case 'accept';
			/* valid inputs */
			if(!isset($_POST['hdn_event']) || !is_numeric($_POST['hdn_event'])) {
				_error(400);
			}

			$device_id = 0;
			if (isset($_POST['user_device'])) {
				$device_id = $_POST['user_device'];
			}

			if (empty($device_id)) {

				if (count($user->_data['devices']) > 0) {
					$device_id = $user->_data['devices'][0]['id'];
				}
			}

			if(empty($device_id)) {
            	throw new Exception(__("You have to select a device."));
        	}

			/* fetch event notification details */

			$get_notification = $db->query(sprintf("SELECT `is_session_accepted` FROM `notifications` WHERE `to_user_id` = %s AND `node_url` LIKE %s limit 1", secure($user->_data['user_id']), secure($_POST['hdn_event']) )) or _error(SQL_ERROR_THROWEN);

			$notification = $get_notification->fetch_assoc();

			if (empty($notification['is_session_accepted'])) {
				$db->query(sprintf("INSERT INTO session_accept (event_id, user_id, device_id, created_at) VALUES (%s, %s, %s, NOW())", secure($_POST['hdn_event']), secure($user->_data['user_id']), secure($device_id) )) or _error(SQL_ERROR_THROWEN);

				$db->query(sprintf("UPDATE `notifications` SET `is_session_accepted` = %s WHERE `to_user_id` = %s AND `node_url` = %s", secure(1), secure($user->_data['user_id']), secure($_POST['hdn_event']) )) or _error(SQL_ERROR_THROWEN);
			}
			/* return */

			return_json( array('callback' => 'window.location = "'.$system['system_url'].'/events/'.$_POST['hdn_event'].'";') );
			break;
		
		default:
			_error(400);
			break;
	}

} catch (Exception $e) {
	return_json( array('error' => true, 'message' => $e->getMessage()) );
}

?>