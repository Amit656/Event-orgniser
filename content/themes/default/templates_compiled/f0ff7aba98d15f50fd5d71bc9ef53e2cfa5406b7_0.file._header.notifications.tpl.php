<?php
/* Smarty version 3.1.33, created on 2020-04-08 15:43:52
  from '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/_header.notifications.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e8df138f01182_41255958',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'f0ff7aba98d15f50fd5d71bc9ef53e2cfa5406b7' => 
    array (
      0 => '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/_header.notifications.tpl',
      1 => 1586360625,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:__feeds_notification.tpl' => 1,
  ),
),false)) {
function content_5e8df138f01182_41255958 (Smarty_Internal_Template $_smarty_tpl) {
?><li class="dropdown js_live-notifications">
    <a href="#" data-toggle="dropdown" data-display="static">
        <i class="fa fa-bell fa-lg"></i>
        <span class="counter red shadow-sm <?php if ($_smarty_tpl->tpl_vars['user']->value->_data['user_live_notifications_counter'] == 0) {?>x-hidden<?php }?>">
            <?php echo $_smarty_tpl->tpl_vars['user']->value->_data['user_live_notifications_counter'];?>

        </span>
    </a>
    <div class="dropdown-menu dropdown-menu-right dropdown-widget with-arrow js_dropdown-keepopen">
        <div class="dropdown-widget-header">
            <span class="title"><?php echo __("Notifications");?>
</span>

            <label class="switch sm float-right" for="notifications_sound">
                <input type="checkbox" class="js_notifications-sound-toggle" name="notifications_sound" id="notifications_sound" <?php if ($_smarty_tpl->tpl_vars['user']->value->_data['notifications_sound']) {?>checked<?php }?>>
                <span class="slider round"></span>
            </label>
            <div class="float-right mr5">
                <?php echo __("Alert Sound");?>

            </div>
        </div>
        <div class="dropdown-widget-body">
            <div class="js_scroller" style="height: 280px;">
                <?php if ($_smarty_tpl->tpl_vars['user']->value->_data['notifications']) {?>
                    <ul>
                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['user']->value->_data['notifications'], 'notification');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['notification']->value) {
?>
                        <?php $_smarty_tpl->_subTemplateRender('file:__feeds_notification.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, true);
?>
                        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                    </ul>
                <?php } else { ?>
                    <p class="text-center text-muted mt10">
                        <?php echo __("No notifications");?>

                    </p>
                <?php }?>
            </div>
        </div>
        <a class="dropdown-widget-footer" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/notifications"><?php echo __("See All");?>
</a>
    </div>
</li>
<?php }
}
