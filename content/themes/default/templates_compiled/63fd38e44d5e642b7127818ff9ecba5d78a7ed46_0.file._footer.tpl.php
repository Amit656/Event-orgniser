<?php
/* Smarty version 3.1.33, created on 2020-03-12 12:59:58
  from '/var/www/html/qrsmusic/content/themes/default/templates/_footer.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e6a324e5a0be9_86564766',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '63fd38e44d5e642b7127818ff9ecba5d78a7ed46' => 
    array (
      0 => '/var/www/html/qrsmusic/content/themes/default/templates/_footer.tpl',
      1 => 1573225137,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:_ads.tpl' => 1,
    'file:_footer.links.tpl' => 1,
    'file:_js_files.tpl' => 1,
    'file:_js_templates.tpl' => 1,
  ),
),false)) {
function content_5e6a324e5a0be9_86564766 (Smarty_Internal_Template $_smarty_tpl) {
?><!-- ads -->
<?php $_smarty_tpl->_subTemplateRender('file:_ads.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_ads'=>$_smarty_tpl->tpl_vars['ads_master']->value['footer'],'_master'=>true), 0, false);
?>
<!-- ads -->

<?php if (!($_smarty_tpl->tpl_vars['page']->value == "index" && !$_smarty_tpl->tpl_vars['user']->value->_logged_in)) {
$_smarty_tpl->_subTemplateRender('file:_footer.links.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}?>

</div>
<!-- main wrapper -->

<!-- Dependencies CSS [Twemoji-Awesome] -->
<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/includes/assets/css/twemoji-awesome/twemoji-awesome.min.css">
<!-- Dependencies CSS [Twemoji-Awesome] -->

<!-- JS Files -->
<?php $_smarty_tpl->_subTemplateRender('file:_js_files.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
<!-- JS Files -->

<!-- JS Templates -->
<?php $_smarty_tpl->_subTemplateRender('file:_js_templates.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
<!-- JS Templates -->

<!-- Footer Custom JavaScript -->
<?php if ($_smarty_tpl->tpl_vars['system']->value['custome_js_footer']) {?>
	<?php echo '<script'; ?>
 type="text/javascript">
		<?php echo html_entity_decode($_smarty_tpl->tpl_vars['system']->value['custome_js_footer'],ENT_QUOTES);?>

	<?php echo '</script'; ?>
>
<?php }?>
<!-- Footer Custom JavaScript -->

<!-- Analytics Code -->
<?php if ($_smarty_tpl->tpl_vars['system']->value['analytics_code']) {
echo html_entity_decode($_smarty_tpl->tpl_vars['system']->value['analytics_code'],ENT_QUOTES);
}?>
<!-- Analytics Code -->

<?php if ($_smarty_tpl->tpl_vars['user']->value->_logged_in) {?>
	<!-- Notification -->
	<audio id="notification-sound" preload="auto">
		<source src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/includes/assets/sounds/notification.mp3" type="audio/mpeg">
	</audio>
	<!-- Notification -->
	<!-- Chat -->
	<audio id="chat-sound" preload="auto">
		<source src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/includes/assets/sounds/chat.mp3" type="audio/mpeg">
	</audio>
	<!-- Chat -->
	<!-- Call -->
	<audio id="voice-calling-sound" preload="auto" loop="true">
		<source src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/includes/assets/sounds/call.mp3" type="audio/mpeg">
	</audio>
	<!-- Call -->
	<!-- Video -->
	<audio id="video_calling-sound" preload="auto" loop="true">
		<source src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/includes/assets/sounds/video.mp3" type="audio/mpeg">
	</audio>
	<!-- Video -->
<?php }?>

</body>
</html><?php }
}
