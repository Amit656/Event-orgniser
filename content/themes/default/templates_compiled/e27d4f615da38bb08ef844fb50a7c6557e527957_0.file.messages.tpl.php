<?php
/* Smarty version 3.1.33, created on 2020-04-07 15:20:00
  from '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/messages.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e8c9a20a23504_30964277',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'e27d4f615da38bb08ef844fb50a7c6557e527957' => 
    array (
      0 => '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/messages.tpl',
      1 => 1585835649,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:_head.tpl' => 1,
    'file:_header.tpl' => 1,
    'file:__feeds_conversation.tpl' => 1,
    'file:ajax.chat.conversation.tpl' => 1,
    'file:_footer.tpl' => 1,
  ),
),false)) {
function content_5e8c9a20a23504_30964277 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender('file:_head.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
$_smarty_tpl->_subTemplateRender('file:_header.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<!-- page content -->
<div class="container mt20 offcanvas">
    <div class="row">

        <!-- threads -->
        <div class="col-md-4 col-lg-3 offcanvas-sidebar">
            <div class="card" style="height: 97%;">
                <div class="card-header with-icon bg-transparent">
                    <div class="float-right">
                        <a class="js_chat-new" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/messages/new">
                            <i class="fa fa-edit fa-lg"></i>
                        </a>
                    </div>
                    <?php echo __("Messenger");?>

                </div>
                <div class="card-body ptb10 plr0 js_live-messages-alt">
                    <?php if (count($_smarty_tpl->tpl_vars['user']->value->_data['conversations']) > 0) {?>
                        <div class="js_scroller" data-slimScroll-height="100%">
                            <ul>
                                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['user']->value->_data['conversations'], '_conversation');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['_conversation']->value) {
?>
                                <?php $_smarty_tpl->_subTemplateRender('file:__feeds_conversation.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('conversation'=>$_smarty_tpl->tpl_vars['_conversation']->value), 0, true);
?>
                                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                            </ul>
                            <?php if (count($_smarty_tpl->tpl_vars['user']->value->_data['conversations']) >= $_smarty_tpl->tpl_vars['system']->value['max_results']) {?>
                                <!-- see-more -->
                                <div class="alert alert-post see-more small mlr5 js_see-more" data-get="conversations">
                                    <span><?php echo __("Load Older Threads");?>
</span>
                                    <div class="loader loader_small x-hidden"></div>
                                </div>
                                <!-- see-more -->
                            <?php }?>
                        </div>
                    <?php }?>
                </div>
            </div>
        </div>
        <!-- threads -->

        <!-- conversation -->
        <div class="col-md-8 col-lg-9 offcanvas-mainbar js_conversation-container">
            <?php if ($_smarty_tpl->tpl_vars['view']->value == "new") {?>
                <div class="card panel-messages fresh">
                    <div class="card-header with-icon bg-transparent">
                        <?php echo __("New Message");?>

                    </div>
                    <div class="card-body">
                        <div class="chat-conversations js_scroller" data-slimScroll-height="440px"></div>
                        <div class="chat-to clearfix js_autocomplete-tags">
                            <div class="to"><?php echo __("To");?>
:</div>
                            <ul class="tags">
                                <?php if ($_smarty_tpl->tpl_vars['recipient']->value) {?>
                                    <li data-uid="<?php echo $_smarty_tpl->tpl_vars['recipient']->value['user_id'];?>
"><?php echo $_smarty_tpl->tpl_vars['recipient']->value['user_fullname'];?>
<button type="button" class="close js_tag-remove" title="<?php echo __("Remove");?>
"><span>×</span></button></li>
                                <?php }?>
                            </ul>
                            <div class="typeahead">
                                <input type="text" size="1" autofocus>
                            </div>
                        </div>
                        <div class="chat-attachments attachments clearfix x-hidden">
                            <ul>
                                <li class="loading">
                                    <div class="progress x-progress"><div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div></div>
                                </li>
                            </ul>
                        </div>
                        <div class="x-form chat-form">
                            <div class="chat-form-message">
                                <textarea class="js_autosize js_post-message" dir="auto" rows="1" placeholder='<?php echo __("Write a message");?>
'></textarea>
                            </div>
                            <ul class="x-form-tools clearfix">
                                <li class="x-form-tools-attach">
                                    <i class="far fa-image fa-lg fa-fw js_x-uploader" data-handle="chat"></i>
                                </li>
                                <li class="x-form-tools-emoji js_emoji-menu-toggle">
                                    <i class="far fa-smile-wink fa-lg fa-fw"></i>
                                </li>
                                <li class="x-form-tools-post js_post-message">
                                    <i class="far fa-paper-plane fa-lg fa-fw"></i>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            <?php } else { ?>
                <?php if ($_smarty_tpl->tpl_vars['conversation']->value) {?>
                    <?php $_smarty_tpl->_subTemplateRender('file:ajax.chat.conversation.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
                <?php } else { ?>
                    <div class="card card-messages" style="padding-top: 60px;">
                        <div class="card-body text-center text-muted">
                            <img width="25%" src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/content/themes/<?php echo $_smarty_tpl->tpl_vars['system']->value['theme'];?>
/images/no_results.png">
                            <p class="mt10 mb0"><strong><?php echo __("No Conversation Selected");?>
</strong></p>
                            <a class="mt20 btn btn-sm rounded-pill btn-primary js_chat-new" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/messages/new">
                                <i class="fa fa-edit mr5"></i><?php echo __("New Message");?>

                            </a>
                        </div>
                    </div>
                <?php }?>
            <?php }?>
        </div>
        <!-- conversation -->

    </div>
</div>
<!-- page content -->

<?php $_smarty_tpl->_subTemplateRender('file:_footer.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
