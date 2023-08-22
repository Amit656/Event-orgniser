<?php
/* Smarty version 3.1.33, created on 2020-03-13 14:20:16
  from '/var/www/html/qrsmusic/content/themes/default/templates/__feeds_post.text.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e6b96a0373be1_41883418',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '28a0c0246f7b29ba458e9b76ac67cc0999152857' => 
    array (
      0 => '/var/www/html/qrsmusic/content/themes/default/templates/__feeds_post.text.tpl',
      1 => 1573225137,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5e6b96a0373be1_41883418 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="post-replace">
    <div class="post-text js_readmore" dir="auto"><?php echo $_smarty_tpl->tpl_vars['post']->value['text'];?>
</div>
    <div class="post-text-translation x-hidden" dir="auto"></div>
    <div class="post-text-plain x-hidden"><?php echo $_smarty_tpl->tpl_vars['post']->value['text_plain'];?>
</div>
</div><?php }
}
