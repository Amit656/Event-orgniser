<?php
/* Smarty version 3.1.33, created on 2020-03-12 12:59:58
  from '/var/www/html/qrsmusic/content/themes/default/templates/_ads.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e6a324e4ea062_96679069',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'ba8e9d4809bf1ca5f4621e3af4c90fa6d7db8d3d' => 
    array (
      0 => '/var/www/html/qrsmusic/content/themes/default/templates/_ads.tpl',
      1 => 1573225137,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5e6a324e4ea062_96679069 (Smarty_Internal_Template $_smarty_tpl) {
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
