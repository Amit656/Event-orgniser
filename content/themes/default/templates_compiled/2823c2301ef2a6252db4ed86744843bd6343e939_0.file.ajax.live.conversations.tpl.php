<?php
/* Smarty version 3.1.33, created on 2020-04-08 11:48:25
  from '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/ajax.live.conversations.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e8dba09c89254_94299691',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '2823c2301ef2a6252db4ed86744843bd6343e939' => 
    array (
      0 => '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/ajax.live.conversations.tpl',
      1 => 1585835649,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:__feeds_conversation.tpl' => 1,
  ),
),false)) {
function content_5e8dba09c89254_94299691 (Smarty_Internal_Template $_smarty_tpl) {
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['conversations']->value, 'conversation');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['conversation']->value) {
$_smarty_tpl->_subTemplateRender('file:__feeds_conversation.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, true);
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
}
}
