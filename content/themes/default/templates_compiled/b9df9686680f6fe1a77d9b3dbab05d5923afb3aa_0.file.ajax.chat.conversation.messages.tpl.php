<?php
/* Smarty version 3.1.33, created on 2020-03-19 15:43:40
  from '/var/www/html/qrsmusic/content/themes/default/templates/ajax.chat.conversation.messages.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e73932cca90f6_08358757',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'b9df9686680f6fe1a77d9b3dbab05d5923afb3aa' => 
    array (
      0 => '/var/www/html/qrsmusic/content/themes/default/templates/ajax.chat.conversation.messages.tpl',
      1 => 1573225137,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:ajax.chat.messages.tpl' => 1,
  ),
),false)) {
function content_5e73932cca90f6_08358757 (Smarty_Internal_Template $_smarty_tpl) {
if ($_smarty_tpl->tpl_vars['conversation']->value['total_messages'] >= $_smarty_tpl->tpl_vars['system']->value['max_results']) {?>
<!-- see-more -->
<div class="alert alert-chat see-more small js_see-more" data-id=<?php echo $_smarty_tpl->tpl_vars['conversation']->value['conversation_id'];?>
  data-get="messages">
    <span><?php echo __("Loading Older Messages");?>
</span>
    <div class="loader loader_small x-hidden"></div>
</div>
<!-- see-more -->
<?php }?>

<ul>
    <?php $_smarty_tpl->_subTemplateRender('file:ajax.chat.messages.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('messages'=>$_smarty_tpl->tpl_vars['conversation']->value['messages']), 0, false);
?>
</ul><?php }
}
