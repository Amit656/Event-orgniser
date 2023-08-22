<?php
/* Smarty version 3.1.33, created on 2020-03-19 11:48:56
  from '/var/www/html/qrsmusic/content/themes/default/templates/ajax.live.requests.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e735c28044d45_76394129',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '1ee5105511268bdc89939e0fb93284bcf662516f' => 
    array (
      0 => '/var/www/html/qrsmusic/content/themes/default/templates/ajax.live.requests.tpl',
      1 => 1573225137,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:__feeds_user.tpl' => 1,
  ),
),false)) {
function content_5e735c28044d45_76394129 (Smarty_Internal_Template $_smarty_tpl) {
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['requests']->value, '_user');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['_user']->value) {
$_smarty_tpl->_subTemplateRender('file:__feeds_user.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_tpl'=>"list",'_connection'=>"request"), 0, true);
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
}
}
