<?php
/* Smarty version 3.1.33, created on 2020-03-19 15:43:39
  from '/var/www/html/qrsmusic/content/themes/default/templates/ajax.live.conversations.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e73932b9b49c7_71151071',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '066c4f83d08bc9d7cabc8afbc99294e1296323b1' => 
    array (
      0 => '/var/www/html/qrsmusic/content/themes/default/templates/ajax.live.conversations.tpl',
      1 => 1573225137,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:__feeds_conversation.tpl' => 1,
  ),
),false)) {
function content_5e73932b9b49c7_71151071 (Smarty_Internal_Template $_smarty_tpl) {
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['conversations']->value, 'conversation');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['conversation']->value) {
$_smarty_tpl->_subTemplateRender('file:__feeds_conversation.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, true);
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
}
}
