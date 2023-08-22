<?php
/* Smarty version 3.1.33, created on 2020-03-31 15:01:19
  from '/var/www/html/qrsmusic/content/themes/default/templates/__feeds_notification.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e835b3fc1f059_50008554',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'fc1db7616bb5a211fc03163fbdbd1f4f0b15d478' => 
    array (
      0 => '/var/www/html/qrsmusic/content/themes/default/templates/__feeds_notification.tpl',
      1 => 1585666874,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5e835b3fc1f059_50008554 (Smarty_Internal_Template $_smarty_tpl) {
?><li class="feeds-item <?php if (!$_smarty_tpl->tpl_vars['notification']->value['seen']) {?>unread<?php }?>" data-id="<?php echo $_smarty_tpl->tpl_vars['notification']->value['notification_id'];?>
">
    <a class="data-container" href="<?php echo $_smarty_tpl->tpl_vars['notification']->value['url'];?>
">
        <img class="data-avatar" src="<?php echo $_smarty_tpl->tpl_vars['notification']->value['user_picture'];?>
" alt="">
        <div class="data-content">
            <div>
            	<span class="name"><?php echo $_smarty_tpl->tpl_vars['notification']->value['user_firstname'];?>
 <?php echo $_smarty_tpl->tpl_vars['notification']->value['user_lastname'];?>
</span>
            	<?php if ($_smarty_tpl->tpl_vars['notification']->value['user_verified']) {?>
                    <i data-toggle="tooltip" data-placement="top" title='<?php echo __("Verified User");?>
' class="fa fa-check-circle fa-fw verified-badge"></i>
                <?php }?>
                <?php if ($_smarty_tpl->tpl_vars['notification']->value['user_subscribed']) {?>
                    <i data-toggle="tooltip" data-placement="top" title='<?php echo __("Pro User");?>
' class="fa fa-bolt fa-fw pro-badge"></i>
                <?php }?>
           	</div>
            <div><i class="fa <?php echo $_smarty_tpl->tpl_vars['notification']->value['icon'];?>
 pr5"></i> <?php echo $_smarty_tpl->tpl_vars['notification']->value['message'];?>
</div>
            <div class="time js_moment" data-time="<?php echo $_smarty_tpl->tpl_vars['notification']->value['time'];?>
"><?php echo $_smarty_tpl->tpl_vars['notification']->value['time'];?>
</div>
        </div>
    </a>
</li><?php }
}
