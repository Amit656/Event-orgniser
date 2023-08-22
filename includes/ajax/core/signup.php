<?php
/**
 * ajax -> core -> signup
 * 
 * @package Sngine
 * @author Zamblek
 * Changes by AY --> Allow API Token and Give Callback.
 */

// fetch bootstrap
require('../../../bootstrap.php');

// check AJAX Request
//is_ajax();
$token = (isset($_POST['tokenApi'])) ? $_POST['tokenApi'] : false;
if($token != '643097f1-e2cd-4262-97f5-0b1c0d2c5bdc'){
	is_ajax();
} 

// check user logged in
if($user->_logged_in) {
	if($token == '643097f1-e2cd-4262-97f5-0b1c0d2c5bdc'){
		 return_json( array('error' => true, 'message' => 'Logged In User Please Logout.') );
	} 
    return_json( array('callback' => 'window.location.reload();') );
}

// check if registration is open
if(!$system['registration_enabled'] && !$system['invitation_enabled']) {
	return_json( array('error' => true, 'message' => __('Registration is closed right now')) );
}

// signup
try {
	$user->sign_up($_POST);
	if($token == '643097f1-e2cd-4262-97f5-0b1c0d2c5bdc'){
		 return_json( array('login' => 'true') );
	} 
    return_json( array('callback' => 'window.location.reload();') );
} catch (Exception $e) {
	return_json( array('error' => true, 'message' => $e->getMessage()) );
}

?>