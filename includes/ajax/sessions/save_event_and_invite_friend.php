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
if(!$user->_logged_in || !$user->_is_admin) {
	modal(MESSAGE, __("System Message"), __("You don't have the right permission to access this"));
}

// edit announcements
try {

	switch ($_GET['do']) {
		case 'edit':
			/* valid inputs */
			if(!isset($_GET['id']) || !is_numeric($_GET['id'])) {
				_error(400);
			}
			/* valid inputs */
			if(is_empty($_POST['name'])) {
				throw new Exception(__("You have to enter the announcement name"));
			}
			if(is_empty($_POST['message'])) {
				throw new Exception(__("You have to enter the announcement HTML code"));
			}
			if(is_empty($_POST['start_date'])) {
				throw new Exception(__("You have to enter the announcement start date"));
			}
			if(is_empty($_POST['end_date'])) {
				throw new Exception(__("You have to enter the announcement end date"));
			}
			if(strtotime($_POST['end_date']) < strtotime($_POST['start_date'])) {
				throw new Exception(__("End Date must be after the Start Date"));
			}

			/* update */
			$db->query(sprintf("UPDATE announcements SET name = %s, title = %s, type = %s, code = %s, start_date = %s, end_date = %s WHERE announcement_id = %s", secure($_POST['name']), secure($_POST['title']), secure($_POST['type']), secure($_POST['message']), secure($_POST['start_date'], 'datetime'), secure($_POST['end_date'], 'datetime'), secure($_GET['id'], 'int') )) or _error(SQL_ERROR_THROWEN);
			/* return */
			return_json( array('success' => true, 'message' => __("Announcement info have been updated")) );
			break;

		case 'add':
			/* valid inputs */

			$invited_friends = array();

			if(is_empty($_POST['connection_type'])) {
				throw new Exception(__("You have to enter the type"));
			}
			if (isset($_POST['invite_friends']) && is_array($_POST['invite_friends'])) {
				$invited_friends = $_POST['invite_friends'];
			}

			if(count($invited_friends) < 1) {
				throw new Exception(__("You have to invite friends"));
			}
			if(is_empty((int) $_POST['invite_session_type'])) {
				throw new Exception(__("You have to select session type"));
			}
			if(is_empty($_POST['invite_session'])) {
				throw new Exception(__("You have to enter the session name"));
			}
			if(is_empty($_POST['invite_start_time'])) {
				throw new Exception(__("You have to enter the start time"));
			}
			if(is_empty($_POST['invite_end_time'])) {
				throw new Exception(__("You have to enter the end time"));
			}
			/* insert */


			$db->query(sprintf("INSERT INTO event_sessions (session_type_id, connection_type, name, always_on, start_time, end_time, create_user_id) VALUES (%s, %s, %s, %s, %s, %s, %s)", secure($_POST['invite_session_type']), secure($_POST['connection_type']), secure($_POST['invite_session']), secure(isset($_POST['invite_open']) ? 1 : 0), secure($_POST['invite_start_time']), secure($_POST['invite_end_time']), secure($user->_data['user_id']) )) or _error(SQL_ERROR_THROWEN);

			$insert_id = $db->insert_id;
			$notification = array();
			foreach ($invited_friends as $user_id) {
				$notification = array('to_user_id' => $user_id, 'from_user_id' => $user->_data['user_id'], 'action' => 'session_invitation');

				$user->post_notification($notification);
				$db->query(sprintf("INSERT INTO session_invited_friends (event_session_id, user_id, is_invited) VALUES (%s, %s, %s)", secure($insert_id), secure($user_id), secure(1) )) or _error(SQL_ERROR_THROWEN);
			}
			/* return */

			return_json( array('callback' => 'window.location = "'.$system['system_url'].'/events";') );
			break;
		
		default:
			_error(400);
			break;
	}

} catch (Exception $e) {
	return_json( array('error' => true, 'message' => $e->getMessage()) );
}

?>