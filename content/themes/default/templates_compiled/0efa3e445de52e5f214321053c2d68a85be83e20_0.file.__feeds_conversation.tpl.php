<?php
/* Smarty version 3.1.33, created on 2020-03-19 15:43:39
  from '/var/www/html/qrsmusic/content/themes/default/templates/__feeds_conversation.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e73932b9d5198_21733606',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '0efa3e445de52e5f214321053c2d68a85be83e20' => 
    array (
      0 => '/var/www/html/qrsmusic/content/themes/default/templates/__feeds_conversation.tpl',
      1 => 1573225137,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5e73932b9d5198_21733606 (Smarty_Internal_Template $_smarty_tpl) {
?><li class="feeds-item <?php if (!$_smarty_tpl->tpl_vars['conversation']->value['seen']) {?>unread<?php }?>" data-last-message="<?php echo $_smarty_tpl->tpl_vars['conversation']->value['last_message_id'];?>
">
    <?php if ($_smarty_tpl->tpl_vars['conversation']->value['multiple_recipients']) {?>
        <a class="data-container js_chat-start" data-cid="<?php echo $_smarty_tpl->tpl_vars['conversation']->value['conversation_id'];?>
" data-name="<?php echo $_smarty_tpl->tpl_vars['conversation']->value['name'];?>
" data-name-list="<?php echo $_smarty_tpl->tpl_vars['conversation']->value['name_list'];?>
" data-link="<?php echo $_smarty_tpl->tpl_vars['conversation']->value['link'];?>
" data-multiple="true" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/messages/<?php echo $_smarty_tpl->tpl_vars['conversation']->value['conversation_id'];?>
">
            <div class="data-avatar">
                <div class="left-avatar" style="background-image: url('<?php echo $_smarty_tpl->tpl_vars['conversation']->value['picture_left'];?>
')"></div>
                <div class="right-avatar" style="background-image: url('<?php echo $_smarty_tpl->tpl_vars['conversation']->value['picture_right'];?>
')"></div>
            </div>
            <div class="data-content">
                <?php if ($_smarty_tpl->tpl_vars['conversation']->value['image'] != '') {?>
                    <div class="float-right">
                        <img class="data-img" src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_uploads'];?>
/<?php echo $_smarty_tpl->tpl_vars['conversation']->value['image'];?>
" alt="">
                    </div>
                <?php }?>
                <div><span class="name"><?php echo $_smarty_tpl->tpl_vars['conversation']->value['name'];?>
</span></div>
                <div class="text">
                    <?php if ($_smarty_tpl->tpl_vars['conversation']->value['message'] != '') {?>
                        <?php echo $_smarty_tpl->tpl_vars['conversation']->value['message_orginal'];?>

                    <?php } else { ?>
                        <i class="fa fa-file-image"></i> <?php echo __("photo");?>

                    <?php }?>
                </div>
                <div class="time js_moment" data-time="<?php echo $_smarty_tpl->tpl_vars['conversation']->value['time'];?>
"><?php echo $_smarty_tpl->tpl_vars['conversation']->value['time'];?>
</div>
            </div>
        </a>
    <?php } else { ?>
        <a class="data-container js_chat-start" data-cid="<?php echo $_smarty_tpl->tpl_vars['conversation']->value['conversation_id'];?>
" data-uid="<?php echo $_smarty_tpl->tpl_vars['conversation']->value['user_id'];?>
" data-name="<?php echo $_smarty_tpl->tpl_vars['conversation']->value['name'];?>
" data-name-list="<?php echo $_smarty_tpl->tpl_vars['conversation']->value['name_list'];?>
" data-link="<?php echo $_smarty_tpl->tpl_vars['conversation']->value['link'];?>
" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/messages/<?php echo $_smarty_tpl->tpl_vars['conversation']->value['conversation_id'];?>
">
            <img class="data-avatar" src="<?php echo $_smarty_tpl->tpl_vars['conversation']->value['picture'];?>
" alt="">
            <div class="data-content">
                <?php if ($_smarty_tpl->tpl_vars['conversation']->value['image'] != '') {?>
                    <div class="float-right">
                        <img class="data-img" src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_uploads'];?>
/<?php echo $_smarty_tpl->tpl_vars['conversation']->value['image'];?>
" alt="">
                    </div>
                <?php }?>
                <div><span class="name"><?php echo $_smarty_tpl->tpl_vars['conversation']->value['name'];?>
</span></div>
                <div class="text">
                    <?php if ($_smarty_tpl->tpl_vars['conversation']->value['message'] != '') {?>
                        <?php echo $_smarty_tpl->tpl_vars['conversation']->value['message_orginal'];?>

                    <?php } else { ?>
                        <i class="fa fa-file-image"></i> <?php echo __("photo");?>

                    <?php }?>
                </div>
                <div class="time js_moment" data-time="<?php echo $_smarty_tpl->tpl_vars['conversation']->value['time'];?>
"><?php echo $_smarty_tpl->tpl_vars['conversation']->value['time'];?>
</div>
            </div>
        </a>
    <?php }?>
</li><?php }
}
