<?php
/**
 * ajax -> admin -> tools
 * 
 * @package Sngine
 * @author Zamblek
 */

// set execution time
set_time_limit(0); /* unlimited max execution time */

// fetch bootstrap
require('../../../bootstrap.php');

// check AJAX Request
is_ajax();

// check admin logged in
if(!$user->_logged_in || !$user->_is_admin) {
	modal(MESSAGE, __("System Message"), __("You don't have the right permission to access this"));
}

// tools
try {

	switch ($_GET['do']) {
		case 'faker':
			/* fake users generator */
			$generated = $user->fake_users_generator($_POST['users_num'], $_POST['default_password'], $_POST['random_Avatar'], $_POST['language']);
			/* return */
			return_json( array('success' => true, 'message' => $generated." ".__("fake users accounts generated successfully")) );
			break;
		
		default:
			_error(400);
			break;
	}

} catch (Exception $e) {
	return_json( array('error' => true, 'message' => $e->getMessage()) );
}

?>