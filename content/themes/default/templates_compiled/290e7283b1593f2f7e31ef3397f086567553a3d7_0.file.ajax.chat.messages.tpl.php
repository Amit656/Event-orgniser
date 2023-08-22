<?php
/* Smarty version 3.1.33, created on 2020-03-19 15:43:40
  from '/var/www/html/qrsmusic/content/themes/default/templates/ajax.chat.messages.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e73932ccabaa6_36030996',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '290e7283b1593f2f7e31ef3397f086567553a3d7' => 
    array (
      0 => '/var/www/html/qrsmusic/content/themes/default/templates/ajax.chat.messages.tpl',
      1 => 1573225137,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:__feeds_message.tpl' => 1,
  ),
),false)) {
function content_5e73932ccabaa6_36030996 (Smarty_Internal_Template $_smarty_tpl) {
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['messages']->value, 'message');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['message']->value) {
$_smarty_tpl->_subTemplateRender('file:__feeds_message.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, true);
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
}
}
