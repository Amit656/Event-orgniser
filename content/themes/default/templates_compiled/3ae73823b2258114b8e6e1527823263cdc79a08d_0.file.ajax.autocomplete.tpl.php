<?php
/* Smarty version 3.1.33, created on 2020-04-07 15:20:07
  from '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/ajax.autocomplete.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e8c9a27b46866_05966866',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '3ae73823b2258114b8e6e1527823263cdc79a08d' => 
    array (
      0 => '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/ajax.autocomplete.tpl',
      1 => 1585835649,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5e8c9a27b46866_05966866 (Smarty_Internal_Template $_smarty_tpl) {
?><ul>
    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['users']->value, '_user');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['_user']->value) {
?>
    <li>
        <div class="data-container clickable small <?php if ($_smarty_tpl->tpl_vars['type']->value == 'tags') {?>js_tag-add<?php } else { ?>js_autocomplete-add<?php }?>" data-uid="<?php echo $_smarty_tpl->tpl_vars['_user']->value['user_id'];?>
" data-name="<?php echo $_smarty_tpl->tpl_vars['_user']->value['user_firstname'];?>
 <?php echo $_smarty_tpl->tpl_vars['_user']->value['user_lastname'];?>
">
            <img class="data-avatar" src="<?php echo $_smarty_tpl->tpl_vars['_user']->value['user_picture'];?>
" alt="<?php echo $_smarty_tpl->tpl_vars['_user']->value['user_firstname'];?>
 <?php echo $_smarty_tpl->tpl_vars['_user']->value['user_lastname'];?>
">
            <div class="data-content">
                <div><strong><?php echo $_smarty_tpl->tpl_vars['_user']->value['user_firstname'];?>
 <?php echo $_smarty_tpl->tpl_vars['_user']->value['user_lastname'];?>
</strong></div>
            </div>
        </div>
    </li>
    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
</ul><?php }
}
