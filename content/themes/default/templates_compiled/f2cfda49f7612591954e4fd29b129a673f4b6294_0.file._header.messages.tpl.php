<?php
/* Smarty version 3.1.33, created on 2020-03-12 13:26:35
  from '/var/www/html/qrsmusic/content/themes/default/templates/_header.messages.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e6a388b4d0987_12874276',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'f2cfda49f7612591954e4fd29b129a673f4b6294' => 
    array (
      0 => '/var/www/html/qrsmusic/content/themes/default/templates/_header.messages.tpl',
      1 => 1573225137,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:__feeds_conversation.tpl' => 1,
  ),
),false)) {
function content_5e6a388b4d0987_12874276 (Smarty_Internal_Template $_smarty_tpl) {
?><li class="dropdown js_live-messages">
    <a href="#" data-toggle="dropdown" data-display="static">
        <i class="fa fa-comments fa-lg"></i>
        <span class="counter blue shadow-sm <?php if ($_smarty_tpl->tpl_vars['user']->value->_data['user_live_messages_counter'] == 0) {?>x-hidden<?php }?>">
            <?php echo $_smarty_tpl->tpl_vars['user']->value->_data['user_live_messages_counter'];?>

        </span>
    </a>
    <div class="dropdown-menu dropdown-menu-right dropdown-widget with-arrow">
        <div class="dropdown-widget-header">
            <span class="title"><?php echo __("Messages");?>
</span>
            <a class="float-right text-link js_chat-new" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/messages/new"><?php echo __("Send a New Message");?>
</a>
        </div>
        <div class="dropdown-widget-body">
            <div class="js_scroller">
                <?php if ($_smarty_tpl->tpl_vars['user']->value->_data['conversations']) {?>
                    <ul>
                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['user']->value->_data['conversations'], 'conversation');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['conversation']->value) {
?>
                        <?php $_smarty_tpl->_subTemplateRender('file:__feeds_conversation.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, true);
?>
                        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                    </ul>
                <?php } else { ?>
                    <p class="text-center text-muted mt10">
                        <?php echo __("No messages");?>

                    </p>
                <?php }?>
            </div>
        </div>
        <a class="dropdown-widget-footer" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/messages"><?php echo __("See All");?>
</a>
    </div>
</li><?php }
}
