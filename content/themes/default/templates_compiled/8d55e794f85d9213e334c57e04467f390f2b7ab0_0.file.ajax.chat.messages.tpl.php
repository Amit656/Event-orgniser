<?php
/* Smarty version 3.1.33, created on 2020-04-04 09:54:26
  from '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/ajax.chat.messages.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e8859521e4f36_92819644',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '8d55e794f85d9213e334c57e04467f390f2b7ab0' => 
    array (
      0 => '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/ajax.chat.messages.tpl',
      1 => 1585835649,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:__feeds_message.tpl' => 1,
  ),
),false)) {
function content_5e8859521e4f36_92819644 (Smarty_Internal_Template $_smarty_tpl) {
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['messages']->value, 'message');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['message']->value) {
$_smarty_tpl->_subTemplateRender('file:__feeds_message.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, true);
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
}
}
