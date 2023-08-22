<?php
/* Smarty version 3.1.33, created on 2020-04-02 14:22:26
  from '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/_header.friend_requests.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e85f522202712_41850371',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '9fc3c5f802a41de57fca6746de933619f36ade3c' => 
    array (
      0 => '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/_header.friend_requests.tpl',
      1 => 1585835649,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:__feeds_user.tpl' => 2,
  ),
),false)) {
function content_5e85f522202712_41850371 (Smarty_Internal_Template $_smarty_tpl) {
?><li class="dropdown js_live-requests">
    <a href="#" data-toggle="dropdown" data-display="static">
        <i class="fa fa-users fa-lg"></i>
        <span class="counter purple shadow-sm <?php if ($_smarty_tpl->tpl_vars['user']->value->_data['user_live_requests_counter'] == 0) {?>x-hidden<?php }?>">
            <?php echo $_smarty_tpl->tpl_vars['user']->value->_data['user_live_requests_counter'];?>

        </span>
    </a>
    <div class="dropdown-menu dropdown-menu-right dropdown-widget with-arrow js_dropdown-keepopen">
        <div class="dropdown-widget-header">
            <span class="title"><?php echo __("Friend Requests");?>
</span>
        </div>
        <div class="dropdown-widget-body">
            <div class="js_scroller">
                <!-- Friend Requests -->
                <?php if ($_smarty_tpl->tpl_vars['user']->value->_data['friend_requests_count'] > 0) {?>
                    <ul>
                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['user']->value->_data['friend_requests'], '_user');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['_user']->value) {
?>
                        <?php $_smarty_tpl->_subTemplateRender('file:__feeds_user.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_tpl'=>"list",'_connection'=>"request"), 0, true);
?>
                        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                    </ul>
                <?php } else { ?>
                    <p class="text-center text-muted mt10">
                        <?php echo __("No new requests");?>

                    </p>
                <?php }?>
                <!-- Friend Requests -->
                
                <!-- People You May Know -->
                <div class="title">
                    <?php echo __("People You May Know");?>

                </div>
                
                <?php if ($_smarty_tpl->tpl_vars['user']->value->_data['new_people']) {?>
                    <ul>
                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['user']->value->_data['new_people'], '_user');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['_user']->value) {
?>
                        <?php $_smarty_tpl->_subTemplateRender('file:__feeds_user.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_tpl'=>"list",'_connection'=>"add"), 0, true);
?>
                        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                    </ul>
                <?php } else { ?>
                    <p class="text-center text-muted mt10">
                        <?php echo __("No people available");?>

                    </p>
                <?php }?>
                <!-- People You May Know -->
            </div>
        </div>
        <a class="dropdown-widget-footer" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/people/friend_requests"><?php echo __("See All");?>
</a>
    </div>
</li><?php }
}
