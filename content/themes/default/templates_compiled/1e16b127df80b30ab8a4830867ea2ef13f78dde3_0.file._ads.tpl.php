<?php
/* Smarty version 3.1.33, created on 2020-04-02 14:22:26
  from '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/_ads.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e85f52225a360_30453638',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '1e16b127df80b30ab8a4830867ea2ef13f78dde3' => 
    array (
      0 => '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/_ads.tpl',
      1 => 1585835649,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5e85f52225a360_30453638 (Smarty_Internal_Template $_smarty_tpl) {
if ($_smarty_tpl->tpl_vars['_master']->value) {?>

	<?php if ($_smarty_tpl->tpl_vars['_ads']->value && $_smarty_tpl->tpl_vars['user']->value->_logged_in && ($_smarty_tpl->tpl_vars['page']->value != "admin" && $_smarty_tpl->tpl_vars['page']->value != "settings" && $_smarty_tpl->tpl_vars['page']->value != "market" && $_smarty_tpl->tpl_vars['page']->value != "static")) {?>
	    <div class="container mtb20">
	    	<!-- ads -->
	        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['_ads']->value, 'ads_unit');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['ads_unit']->value) {
?>
	            <div class="card">
	                <div class="card-header bg-transparent">
	                    <i class="fa fa-bullhorn fa-fw mr5 yellow"></i><?php echo __("Sponsored");?>

	                </div>
	                <div class="card-body"><?php echo $_smarty_tpl->tpl_vars['ads_unit']->value['code'];?>
</div>
	            </div>
	        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
	        <!-- ads -->
	    </div>
	<?php }?>

<?php } else { ?>

	<?php if ($_smarty_tpl->tpl_vars['ads']->value) {?>
		<!-- ads -->
		<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['ads']->value, 'ads_unit');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['ads_unit']->value) {
?>
			<div class="card">
			    <div class="card-header bg-transparent">
			        <i class="fa fa-bullhorn fa-fw mr5 yellow"></i><?php echo __("Sponsored");?>

			    </div>
			    <div class="card-body"><?php echo $_smarty_tpl->tpl_vars['ads_unit']->value['code'];?>
</div>
			</div>
		<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
		<!-- ads -->
	<?php }?>

<?php }
}
}
