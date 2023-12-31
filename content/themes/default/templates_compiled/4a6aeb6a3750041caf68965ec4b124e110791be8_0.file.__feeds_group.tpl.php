<?php
/* Smarty version 3.1.33, created on 2020-03-12 13:29:56
  from '/var/www/html/qrsmusic/content/themes/default/templates/__feeds_group.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e6a39547ad906_80149058',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '4a6aeb6a3750041caf68965ec4b124e110791be8' => 
    array (
      0 => '/var/www/html/qrsmusic/content/themes/default/templates/__feeds_group.tpl',
      1 => 1573225137,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5e6a39547ad906_80149058 (Smarty_Internal_Template $_smarty_tpl) {
if ($_smarty_tpl->tpl_vars['_tpl']->value == "box") {?>
    <li class="col-md-6 col-lg-3">
        <div class="ui-box">
            <div class="img">
                <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/groups/<?php echo $_smarty_tpl->tpl_vars['_group']->value['group_name'];
if ($_smarty_tpl->tpl_vars['_search']->value) {?>?ref=qs<?php }?>">
                    <img alt="<?php echo $_smarty_tpl->tpl_vars['_group']->value['group_title'];?>
" src="<?php echo $_smarty_tpl->tpl_vars['_group']->value['group_picture'];?>
" />
                </a>
            </div>
            <div class="mt10">
                <a class="h6" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/groups/<?php echo $_smarty_tpl->tpl_vars['_group']->value['group_name'];
if ($_smarty_tpl->tpl_vars['_search']->value) {?>?ref=qs<?php }?>"><?php echo $_smarty_tpl->tpl_vars['_group']->value['group_title'];?>
</a>
                <div><?php echo $_smarty_tpl->tpl_vars['_group']->value['group_members'];?>
 <?php echo __("Members");?>
</div>
            </div>
            <div class="mt10">
                <?php if ($_smarty_tpl->tpl_vars['_group']->value['i_joined'] == "approved") {?>
                    <button type="button" class="btn btn-sm btn-success btn-delete js_leave-group" data-id="<?php echo $_smarty_tpl->tpl_vars['_group']->value['group_id'];?>
" data-privacy="<?php echo $_smarty_tpl->tpl_vars['_group']->value['group_privacy'];?>
">
                        <i class="fa fa-check mr5"></i><?php echo __("Joined");?>

                    </button>
                <?php } elseif ($_smarty_tpl->tpl_vars['_group']->value['i_joined'] == "pending") {?>
                    <button type="button" class="btn btn-sm btn-warning js_leave-group" data-id="<?php echo $_smarty_tpl->tpl_vars['_group']->value['group_id'];?>
" data-privacy="<?php echo $_smarty_tpl->tpl_vars['_group']->value['group_privacy'];?>
">
                        <i class="fa fa-clock mr5"></i><?php echo __("Pending");?>

                    </button>
                <?php } else { ?>
                    <button type="button" class="btn btn-sm btn-success js_join-group" data-id="<?php echo $_smarty_tpl->tpl_vars['_group']->value['group_id'];?>
" data-privacy="<?php if ($_smarty_tpl->tpl_vars['user']->value->_data['user_id'] == $_smarty_tpl->tpl_vars['_group']->value['group_admin']) {?>public<?php } else {
echo $_smarty_tpl->tpl_vars['_group']->value['group_privacy'];
}?>">
                        <i class="fa fa-user-plus mr5"></i><?php echo __("Join");?>

                    </button>
                <?php }?>
            </div>
        </div>
    </li>
<?php } elseif ($_smarty_tpl->tpl_vars['_tpl']->value == "list") {?>
    <li class="feeds-item">
        <div class="data-container <?php if ($_smarty_tpl->tpl_vars['_small']->value) {?>small<?php }?>">
            <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/groups/<?php echo $_smarty_tpl->tpl_vars['_group']->value['group_name'];
if ($_smarty_tpl->tpl_vars['_search']->value) {?>?ref=qs<?php }?>">
                <img class="data-avatar" src="<?php echo $_smarty_tpl->tpl_vars['_group']->value['group_picture'];?>
" alt="<?php echo $_smarty_tpl->tpl_vars['_group']->value['group_title'];?>
">
            </a>
            <div class="data-content">
                <div class="float-right">
                    <?php if ($_smarty_tpl->tpl_vars['_group']->value['i_joined'] == "approved") {?>
                        <button type="button" class="btn btn-sm btn-success btn-delete js_leave-group" data-id="<?php echo $_smarty_tpl->tpl_vars['_group']->value['group_id'];?>
" data-privacy="<?php echo $_smarty_tpl->tpl_vars['_group']->value['group_privacy'];?>
">
                            <i class="fa fa-check mr5"></i><?php echo __("Joined");?>

                        </button>
                    <?php } elseif ($_smarty_tpl->tpl_vars['_group']->value['i_joined'] == "pending") {?>
                        <button type="button" class="btn btn-sm btn-warning js_leave-group" data-id="<?php echo $_smarty_tpl->tpl_vars['_group']->value['group_id'];?>
" data-privacy="<?php echo $_smarty_tpl->tpl_vars['_group']->value['group_privacy'];?>
">
                            <i class="fa fa-clock mr5"></i><?php echo __("Pending");?>

                        </button>
                    <?php } else { ?>
                        <button type="button" class="btn btn-sm btn-success js_join-group" data-id="<?php echo $_smarty_tpl->tpl_vars['_group']->value['group_id'];?>
" data-privacy="<?php if ($_smarty_tpl->tpl_vars['user']->value->_data['user_id'] == $_smarty_tpl->tpl_vars['_group']->value['group_admin']) {?>public<?php } else {
echo $_smarty_tpl->tpl_vars['_group']->value['group_privacy'];
}?>">
                            <i class="fa fa-user-plus mr5"></i><?php echo __("Join");?>

                        </button>
                    <?php }?>
                </div>
                <div>
                    <span class="name">
                        <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/groups/<?php echo $_smarty_tpl->tpl_vars['_group']->value['group_name'];
if ($_smarty_tpl->tpl_vars['_search']->value) {?>?ref=qs<?php }?>"><?php echo $_smarty_tpl->tpl_vars['_group']->value['group_title'];?>
</a>
                    </span>
                    <div><?php echo $_smarty_tpl->tpl_vars['_group']->value['group_members'];?>
 <?php echo __("Members");?>
</div>
                </div>
            </div>
        </div>
    </li>
<?php }
}
}
