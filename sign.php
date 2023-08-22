<?php
/**
 * sign
 * 
 * @package Sngine
 * @author Zamblek
 */

// fetch bootstrap
require('bootstrap.php');

$token = (isset($_POST['tokenApi'])) ? $_POST['tokenApi'] : false;

switch ($_GET['do']) {
	case 'in':
		// check user logged in
		if($user->_logged_in) {
			// echo "string"; exit();
		    redirect();
		}

		// page header
		page_header($system['system_title']." &rsaquo; ".__("Login"));

		// get custom fields
		$smarty->assign('custom_fields', $user->get_custom_fields());

		// assign varible
		$smarty->assign('do', $_GET['do']);

		// page footer
		page_footer("sign");
		break;
	
	case 'up':
		// check user logged in
		if($user->_logged_in) {
		    header('Location: '.$system['system_url']);
		}

		// check if register enabled
		if(!$system['registration_enabled'] && !$system['invitation_enabled']) {
			_error(404);
		}

		// page header
		page_header($system['system_title']." &rsaquo; ".__("Sign Up"));

		// get custom fields
		$smarty->assign('custom_fields', $user->get_custom_fields());

		// assign varible
		$smarty->assign('do', $_GET['do']);

		// page footer
		page_footer("sign");
		break;

	case 'out':
		// check user logged in
		
		//This should be moved into user login check
		if($token == '643097f1-e2cd-4262-97f5-0b1c0d2c5bdc'){
			//Check for device to remove.
			if( isset($_POST['device']) ){
				
				$user->deleteDeviceACL($user->_data['user_email'],$_POST['device']);
				$user->setDeviceDisallow($user->_data['user_id'], $_POST['device']);
			}
			// sign out
			$user->sign_out();

			return_json( array('login'=>false,'error' => false  ) );
			exit;		 
		}
		
		if(!$user->_logged_in) {
			redirect();
		}

		// sign out
		$user->sign_out();
		
		redirect();
		break;

	case 'reset':
		// check user logged in
		if($user->_logged_in) {
		    redirect();
		}

		// page header
		page_header($system['system_title']." &rsaquo; ".__("Forgot your password?"));

		// page footer
		page_footer("reset");
		break;

	default:
		_error(404);
		break;
}

?>