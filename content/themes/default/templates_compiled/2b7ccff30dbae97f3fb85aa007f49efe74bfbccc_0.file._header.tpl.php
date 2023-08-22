<?php
/* Smarty version 3.1.33, created on 2020-04-10 11:58:51
  from '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/_header.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e905f7b456ab5_24924795',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '2b7ccff30dbae97f3fb85aa007f49efe74bfbccc' => 
    array (
      0 => '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/_header.tpl',
      1 => 1586515788,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:_header.search.tpl' => 1,
    'file:_header.friend_requests.tpl' => 1,
    'file:_header.messages.tpl' => 1,
    'file:_header.notifications.tpl' => 1,
    'file:_ads.tpl' => 1,
  ),
),false)) {
function content_5e905f7b456ab5_24924795 (Smarty_Internal_Template $_smarty_tpl) {
if (!$_smarty_tpl->tpl_vars['user']->value->_logged_in) {?>
    <body data-hash-tok="<?php echo $_smarty_tpl->tpl_vars['session_hash']->value['token'];?>
" data-hash-pos="<?php echo $_smarty_tpl->tpl_vars['session_hash']->value['position'];?>
" class="<?php if ($_smarty_tpl->tpl_vars['system']->value['theme_mode_night']) {?>night-mode<?php }?> visitor n_chat <?php if ($_smarty_tpl->tpl_vars['page']->value == 'index' || $_smarty_tpl->tpl_vars['page']->value == 'sign') {?>index-body<?php }?>">
<?php } else { ?>
    <body data-hash-tok="<?php echo $_smarty_tpl->tpl_vars['session_hash']->value['token'];?>
" data-hash-pos="<?php echo $_smarty_tpl->tpl_vars['session_hash']->value['position'];?>
" data-chat-enabled="<?php echo $_smarty_tpl->tpl_vars['user']->value->_data['user_chat_enabled'];?>
" class="<?php if ($_smarty_tpl->tpl_vars['system']->value['theme_mode_night']) {?>night-mode<?php }?> <?php if (!$_smarty_tpl->tpl_vars['system']->value['chat_enabled']) {?>n_chat<?php }
if ($_smarty_tpl->tpl_vars['system']->value['activation_enabled'] && !$_smarty_tpl->tpl_vars['user']->value->_data['user_activated']) {?> n_activated<?php }
if (!$_smarty_tpl->tpl_vars['system']->value['system_live']) {?> n_live<?php }?>">
<?php }?>
    
    <!-- main wrapper -->
    <div class="main-wrapper">
        
        <?php if ($_smarty_tpl->tpl_vars['user']->value->_logged_in && $_smarty_tpl->tpl_vars['system']->value['activation_enabled'] && !$_smarty_tpl->tpl_vars['user']->value->_data['user_activated']) {?>
            <!-- top-bar -->
            <div class="top-bar">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-7 d-none d-sm-block">
                            <?php if ($_smarty_tpl->tpl_vars['system']->value['activation_type'] == "email") {?>
                                <?php echo __("Please go to");?>
 <span class="text-primary"><?php echo $_smarty_tpl->tpl_vars['user']->value->_data['user_email'];?>
</span> <?php echo __("to complete the activation process");?>
.
                            <?php } else { ?>
                                <?php echo __("Please check the SMS on your phone");?>
 <strong><?php echo $_smarty_tpl->tpl_vars['user']->value->_data['user_phone'];?>
</strong> <?php echo __("to complete the activation process");?>
.
                            <?php }?>
                        </div>
                        <div class="col-sm-5">
                            <?php if ($_smarty_tpl->tpl_vars['system']->value['activation_type'] == "email") {?>
                                <span class="text-link" data-toggle="modal" data-url="core/activation_email_resend.php">
                                    <?php echo __("Resend Verification Email");?>

                                </span>
                                 - 
                                <span class="text-link" data-toggle="modal" data-url="#activation-email-reset">
                                    <?php echo __("Change Email");?>

                                </span>
                            <?php } else { ?>
                                <span class="btn btn-info btn-sm mr10" data-toggle="modal" data-url="#activation-phone"><?php echo __("Enter Code");?>
</span>
                                <?php if ($_smarty_tpl->tpl_vars['user']->value->_data['user_phone']) {?>
                                    <span class="text-link" data-toggle="modal" data-url="core/activation_phone_resend.php">
                                        <?php echo __("Resend SMS");?>

                                    </span>
                                     - 
                                <?php }?>
                                <span class="text-link" data-toggle="modal" data-url="#activation-phone-reset">
                                    <?php echo __("Change Phone Number");?>

                                </span>
                            <?php }?>
                        </div>
                    </div>
                </div>
            </div>
            <!-- top-bar -->
        <?php }?>

        <?php if (!$_smarty_tpl->tpl_vars['system']->value['system_live']) {?>
            <!-- top-bar alert-->
            <div class="top-bar danger">
                <div class="container">
                    <i class="fa fa-exclamation-triangle fa-lg pr5"></i>
                    <span class="d-none d-sm-inline"><?php echo __("The system has been shutted down");?>
.</span>
                    <span><?php echo __("Turn it on from");?>
</span> <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/admincp/settings"><?php echo __("Admin Panel");?>
</a>
                </div>
            </div>
            <!-- top-bar alert-->
        <?php }?>

        <!-- main-header -->
        <div class="main-header">
            <div class="container">
                <div class="row">

                    <div class="<?php if (!$_smarty_tpl->tpl_vars['user']->value->_logged_in) {?>col-6<?php }?> col-md-4 col-lg-3 <?php if ($_smarty_tpl->tpl_vars['user']->value->_logged_in) {?>d-none d-md-block<?php }?>">
                        <!-- logo-wrapper -->
                        <div class="logo-wrapper <?php if ($_smarty_tpl->tpl_vars['user']->value->_logged_in) {?>d-none d-md-block<?php }?>">
                            <!-- logo -->
                            <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
" class="logo">
                                <?php if ($_smarty_tpl->tpl_vars['system']->value['system_logo']) {?>
                                    <img class="img-fluid" src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_uploads'];?>
/<?php echo $_smarty_tpl->tpl_vars['system']->value['system_logo'];?>
" alt="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_title'];?>
" title="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_title'];?>
">
                                <?php } else { ?>
                                    <?php echo $_smarty_tpl->tpl_vars['system']->value['system_title'];?>

                                <?php }?>
                            </a>
                            <!-- logo -->
                        </div>
                        <!-- logo-wrapper -->
                    </div>

                    <div class="<?php if (!$_smarty_tpl->tpl_vars['user']->value->_logged_in) {?>col-6<?php }?> col-md-8 col-lg-9">
                        <div class="row">
                            <div class="col-md-7 col-lg-8">
                                <!-- search-wrapper -->
                                <?php if ($_smarty_tpl->tpl_vars['user']->value->_logged_in || (!$_smarty_tpl->tpl_vars['user']->value->_logged_in && $_smarty_tpl->tpl_vars['system']->value['system_public'])) {?>
                                    <?php $_smarty_tpl->_subTemplateRender('file:_header.search.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
                                <?php }?>
                                <!-- search-wrapper -->
                            </div>
                            <div class="col-md-5 col-lg-4">
                                <!-- navbar-wrapper -->
                                <div class="navbar-wrapper">
                                    <ul class="clearfix">
                                        <?php if ($_smarty_tpl->tpl_vars['user']->value->_logged_in) {?>
                                            <!-- bars -->
                                            <li class="d-block d-md-none">
                                                <a href="#" data-toggle="offcanvas">
                                                    <i class="fa fa-bars fa-lg"></i>
                                                </a>
                                            </li>
                                            <!-- bars -->

                                            <!-- home -->
                                            <li class="d-block d-md-none">
                                                <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
">
                                                    <i class="fa fa-home fa-lg"></i>
                                                </a>
                                            </li>
                                            <!-- home -->

                                            <!-- friend requests -->
                                            <?php $_smarty_tpl->_subTemplateRender('file:_header.friend_requests.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
                                            <!-- friend requests -->

                                            <!-- messages -->
                                            <?php $_smarty_tpl->_subTemplateRender('file:_header.messages.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
                                            <!-- messages -->

                                            <!-- notifications -->
                                            <?php $_smarty_tpl->_subTemplateRender('file:_header.notifications.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
                                            <!-- notifications -->

                                            <!-- search -->
                                            <li class="d-block d-md-none">
                                                <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/search">
                                                    <i class="fa fa-search fa-lg"></i>
                                                </a>
                                            </li>
                                            <!-- search -->

                                            <!-- user-menu -->
                                            <li class="dropdown">
                                                <a href="#" class="dropdown-toggle user-menu" data-toggle="dropdown" data-display="static">
                                                    <img src="<?php echo $_smarty_tpl->tpl_vars['user']->value->_data['user_picture'];?>
">
                                                    <span class="d-none"><?php echo $_smarty_tpl->tpl_vars['user']->value->_data['user_firstname'];?>
</span>
                                                </a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <?php if ($_smarty_tpl->tpl_vars['system']->value['packages_enabled'] && !$_smarty_tpl->tpl_vars['user']->value->_data['user_subscribed']) {?>
                                                        <a class="dropdown-item" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/packages"><?php echo __("Upgrade to Pro");?>
</a>
                                                    <?php }?>
                                                    <?php if ($_smarty_tpl->tpl_vars['system']->value['points_enabled'] || $_smarty_tpl->tpl_vars['system']->value['ads_enabled']) {?>
                                                        <?php if ($_smarty_tpl->tpl_vars['system']->value['points_enabled']) {?>
                                                            <a class="dropdown-item" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/settings/points"><?php echo __("Points");?>
: <span class="badge badge-info"><?php echo $_smarty_tpl->tpl_vars['user']->value->_data['user_points'];?>
</span></a>
                                                        <?php }?>
                                                        <?php if ($_smarty_tpl->tpl_vars['system']->value['ads_enabled']) {?>
                                                            <a class="dropdown-item" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/wallet"><?php echo __("Wallet");?>
: <span class="badge badge-success"><?php echo $_smarty_tpl->tpl_vars['system']->value['system_currency_symbol'];
echo number_format($_smarty_tpl->tpl_vars['user']->value->_data['user_wallet_balance'],2);?>
</span></a>
                                                        <?php }?>
                                                        <div class="dropdown-divider"></div>
                                                    <?php }?>
                                                    <a class="dropdown-item" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/<?php echo $_smarty_tpl->tpl_vars['user']->value->_data['user_name'];?>
"><?php echo __("Profile");?>
</a>
                                                    <a class="dropdown-item" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/settings"><?php echo __("Settings");?>
</a>
                                                    <a class="dropdown-item" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/settings/privacy"><?php echo __("Privacy");?>
</a>
                                                    <?php if ($_smarty_tpl->tpl_vars['user']->value->_is_admin) {?>
                                                        <div class="dropdown-divider"></div>
                                                        <a class="dropdown-item" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/admincp"><?php echo __("Admin Panel");?>
</a>
                                                    <?php }?>
                                                    <div class="dropdown-divider"></div>
                                                    <a class="dropdown-item" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/signout"><?php echo __("Log Out");?>
</a>
                                                    <div class="dropdown-divider"></div>
                                                    <div class="dropdown-item pointer" data-toggle="modal" data-url="#keyboard-shortcuts" data-size="small">
                                                        <?php echo __("Keyboard Shortcuts");?>

                                                        <span class="float-right">
                                                            <i class="fas fa-keyboard"></i>
                                                        </span>
                                                    </div>
                                                    <?php if ($_smarty_tpl->tpl_vars['system']->value['system_theme_mode_select']) {?>
                                                        <?php if ($_smarty_tpl->tpl_vars['system']->value['theme_mode_night']) {?>
                                                            <div class="dropdown-item pointer js_theme-mode" data-mode="day">
                                                                <span class="js_theme-mode-text"><?php echo __("Day Mode");?>
</span>
                                                                <span class="float-right">
                                                                    <i class="js_theme-mode-icon fas fa-sun"></i>
                                                                </span>
                                                            </div>
                                                        <?php } else { ?>
                                                            <div class="dropdown-item pointer js_theme-mode" data-mode="night">
                                                                <span class="js_theme-mode-text"><?php echo __("Night Mode");?>
</span>
                                                                <span class="float-right">
                                                                    <i class="js_theme-mode-icon fas fa-moon"></i>
                                                                </span>
                                                            </div>
                                                        <?php }?>
                                                    <?php }?>
                                                </div>
                                            </li>
                                            <!-- user-menu -->

                                        <?php } else { ?>

                                            <li class="dropdown float-right">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-display="static">
                                                    <span><?php echo __("Join");?>
</span>
                                                </a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a class="dropdown-item" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/signin"><?php echo __("Login");?>
</a>
                                                    <?php if ($_smarty_tpl->tpl_vars['system']->value['registration_enabled'] || (!$_smarty_tpl->tpl_vars['system']->value['registration_enabled'] && $_smarty_tpl->tpl_vars['system']->value['invitation_enabled'])) {?>
                                                        <a class="dropdown-item" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/signup"><?php echo __("Register");?>
</a>
                                                    <?php }?>
                                                    <div class="dropdown-divider"></div>
                                                    <?php if ($_smarty_tpl->tpl_vars['system']->value['system_theme_mode_select']) {?>
                                                        <?php if ($_smarty_tpl->tpl_vars['system']->value['theme_mode_night']) {?>
                                                            <div class="dropdown-item pointer js_theme-mode" data-mode="day">
                                                                <span class="js_theme-mode-text"><?php echo __("Day Mode");?>
</span>
                                                                <span class="float-right">
                                                                    <i class="js_theme-mode-icon fas fa-sun"></i>
                                                                </span>
                                                            </div>
                                                        <?php } else { ?>
                                                            <div class="dropdown-item pointer js_theme-mode" data-mode="night">
                                                                <span class="js_theme-mode-text"><?php echo __("Night Mode");?>
</span>
                                                                <span class="float-right">
                                                                    <i class="js_theme-mode-icon fas fa-moon"></i>
                                                                </span>
                                                            </div>
                                                        <?php }?>
                                                    <?php }?>
                                                </div>
                                            </li>

                                        <?php }?>
                                    </ul>
                                </div>
                                <!-- navbar-wrapper -->
                            </div>
                        </div>
                            
                    </div>
                </div>
                        
            </div>
        </div>
        <!-- main-header -->
        <?php echo '<script'; ?>
 src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"><?php echo '</script'; ?>
>
        <!-- ads -->
        <?php $_smarty_tpl->_subTemplateRender('file:_ads.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_ads'=>$_smarty_tpl->tpl_vars['ads_master']->value['header'],'_master'=>true), 0, false);
?>
        <!-- ads -->

<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['user']->value->_data['notifications'], 'notification');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['notification']->value) {
?>
    <div id="Modal<?php echo $_smarty_tpl->tpl_vars['notification']->value['notification_id'];?>
" class="modal fade" role="dialog">
    <form class="js_ajax-forms" data-url="sessions/accept_session.php?do=accept">
        <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <h6 class="modal-title">Invite To Session</h6><br/>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
          </div>
          <div class="modal-body">
        <?php if ($_smarty_tpl->tpl_vars['user']->value->_data['devices']) {?>
            <h6 class="modal-title"><?php echo $_smarty_tpl->tpl_vars['notification']->value['user_firstname'];?>
 <?php echo $_smarty_tpl->tpl_vars['notification']->value['user_lastname'];?>
 has  <?php echo $_smarty_tpl->tpl_vars['notification']->value['message'];?>
</h6><br/>

            <?php if (count($_smarty_tpl->tpl_vars['user']->value->_data['devices']) > 1) {?>
            <div class="form-group">
                <label class="form-control-label" for="title">Select Device</label>
                <select class="form-control" id="devices" name="user_device">
                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['user']->value->getDevices($_smarty_tpl->tpl_vars['user']->value->_data['user_id'],true), 'deviceDetails');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['deviceDetails']->value) {
?>
                <option value=<?php echo $_smarty_tpl->tpl_vars['deviceDetails']->value['id'];?>
><?php echo $_smarty_tpl->tpl_vars['deviceDetails']->value['nickName'];?>
</option>
                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                </select>
            </div>
            <?php }?>

        <?php } else { ?>

        <h6 class="modal-title">You have no devices online or registered at this time. please make sure to register the device and it is on and connected to the internet. </h6>
        <?php }?>
          </div>
          <div class="modal-footer">
            <?php if (count($_smarty_tpl->tpl_vars['user']->value->_data['devices']) > 0) {?>
            <button type="submit" class="btn btn-primary">Accept Session</button>
            <input type="hidden" name="hdn_event" value="<?php echo $_smarty_tpl->tpl_vars['notification']->value['node_url'];?>
">
            <?php }?>
          </div>
        </div>

      </div>
      </form>
    </div>
<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
echo '<script'; ?>
>
$(document).ready(function(){
    $(".join-session").click(function(){
    confirm ("Always1 trusted session?")
    });
});
<?php echo '</script'; ?>
><?php }
}
