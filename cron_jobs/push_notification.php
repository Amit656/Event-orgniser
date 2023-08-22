<?php

require('../includes/class-user.php');
require('../bootstrap.php');

/**
 * will push notification for sessions
 * 
 * @package Sngine
 * @author Zamblek
 */

$user =  new User();

// push notification before 5 minutes of the session  
User::pushNotificationBeforeSessionStart();

// push notification after 5 minutes of the session 
User::pushNotificationAfterSessionStart();

?>