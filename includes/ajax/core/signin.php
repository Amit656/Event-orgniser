<?php
/**
 * ajax -> core -> signin
 * 
 * @package Sngine
 * @author Zamblek
	
	Yost - Modified 03-19-2019.  Remove Ajax Jump out.  Added Tokenapi to allow the login.
		   Modified 04-16-2019	Not Authorized fall out for mqtt auth.
 */

// set override_shutdown
$override_shutdown = true;


// fetch bootstrap
require('../../../bootstrap.php');


// check AJAX Request
//This does a redirect
//is_ajax();
if( !isset($_SERVER['HTTP_X_REQUESTED_WITH']) || ($_SERVER['HTTP_X_REQUESTED_WITH'] != 'XMLHttpRequest') ) {
	//Not ajax -- Run login as api
	// check user logged in
	$mqtt = (isset($_POST['mqtt'])) ? true : false;
	$auth2 = false; //Returns 404 when mqtt
	
	$token = (isset($_POST['tokenApi'])) ? $_POST['tokenApi'] : false;
	if($token != '643097f1-e2cd-4262-97f5-0b1c0d2c5bdc'){
		is_ajax();
	} 
	
	if($user->_logged_in) {
		//https://stackoverflow.com/questions/49236781/php-openssl-decrypt-an-aes-mysql-encryption
		//Encrypt in php Decrypt in mySQL.		//Abandoned for sha1.  Much simpler.  
		$encodedPass = sha1 ($user->_data['user_password']);
		$data = return_json( array('user_id'=>$user->_data['user_id'],'user_name'=>$user->_data['user_name'],'user_cover'=>$user->_data['user_picture'],'login' => true,'refresh'=>true ,'token' => $encodedPass,'secret' => $_SESSION['secret']) );
	}

	// signin
	// Return token
	try {
		$remember = (isset($_POST['remember'])) ? true : false;
		$muser = $user->sign_in($_POST['username_email'], $_POST['password'], $remember);
		$encodedPass = $sha;//sha1 ($user->_data['user_password']);
		//ADDED TO SIGN IN uinfo 
		//$data = return_json( array('user_name'=>$user->_data['user_name'],'user_cover'=>$user->_data['user_picture'],'login' => 'true', 'token' => $encodedPass ,'secret' => $_SESSION['secret']) );
		if($token == '643097f1-e2cd-4262-97f5-0b1c0d2c5bdc'){
			//Set the device table based on user_id?
			if(isset($_POST['device']) && is_string ($_POST['device']) ){
				//Set ALLOW THE DEVICE in the ACL user can read/write to the device.  Also adds the device to the users device table.
				$user->setDeviceACL($_POST['username_email'],$_POST['device']);
				$user->setDevices($uinfo['user_id'],$_POST['device']);
			}
		}
		$data = return_json( array('user_id'=>$uinfo['user_id'],'user_name'=>$uinfo['user_name'],'user_cover'=>$uinfo['user_picture'],'login' => 'true', 'token' => $encodedPass ,'secret' => $_SESSION['secret']) );
		
		$remember = (isset($_POST['remember'])) ? true : false;
		$auth2 = true;
	} catch (Exception $e) {
		// If coming from mqtt validation and auth failed.  
		if($auth==false && $mqtt==true){
			//Returns a 401 Not Authorized if from mqtt
		 	 header("HTTP/1.1 401 Unauthorized");
			exit;
		}
		$data = return_json( array('user_name'=>'','user_cover'=>$user->_data['user_picture'],'login'=>false,'error' => true, 'message' => $e->getMessage()) );
	}
	//return_json has exit --
	/*if($token == '643097f1-e2cd-4262-97f5-0b1c0d2c5bdc'){
		echo $_GET['callback'] . '(' . $data . ')';
		exit;
	}*/
}
// check user logged in
if($user->_logged_in) {
    return_json( array('callback' => 'window.location.reload();') );
}

// signin
try {
	$remember = (isset($_POST['remember'])) ? true : false;
	$user->sign_in($_POST['username_email'], $_POST['password'], $remember);
	return_json( array('callback' => 'window.location.reload();') );
} catch (Exception $e) {
	return_json( array('error' => true, 'message' => $e->getMessage()) );
}

?>