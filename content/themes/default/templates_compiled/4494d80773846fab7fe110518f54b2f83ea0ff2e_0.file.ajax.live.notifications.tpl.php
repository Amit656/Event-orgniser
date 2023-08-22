<?php
/* Smarty version 3.1.33, created on 2020-03-19 11:48:56
  from '/var/www/html/qrsmusic/content/themes/default/templates/ajax.live.notifications.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e735c28089b95_78957750',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '4494d80773846fab7fe110518f54b2f83ea0ff2e' => 
    array (
      0 => '/var/www/html/qrsmusic/content/themes/default/templates/ajax.live.notifications.tpl',
      1 => 1573225137,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:__feeds_notification.tpl' => 1,
  ),
),false)) {
function content_5e735c28089b95_78957750 (Smarty_Internal_Template $_smarty_tpl) {
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['notifications']->value, 'notification');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['notification']->value) {
$_smarty_tpl->_subTemplateRender('file:__feeds_notification.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, true);
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
}
}
