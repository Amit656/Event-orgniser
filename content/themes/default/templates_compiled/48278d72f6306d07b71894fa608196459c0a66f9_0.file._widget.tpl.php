<?php
/* Smarty version 3.1.33, created on 2020-03-12 13:29:56
  from '/var/www/html/qrsmusic/content/themes/default/templates/_widget.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e6a3954766100_87782762',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '48278d72f6306d07b71894fa608196459c0a66f9' => 
    array (
      0 => '/var/www/html/qrsmusic/content/themes/default/templates/_widget.tpl',
      1 => 1573225137,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5e6a3954766100_87782762 (Smarty_Internal_Template $_smarty_tpl) {
if ($_smarty_tpl->tpl_vars['widgets']->value) {?>
	<!-- Widgets -->
	<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['widgets']->value, 'widget');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['widget']->value) {
?>
		<div class="card">
		    <div class="card-header">
		        <strong><?php echo $_smarty_tpl->tpl_vars['widget']->value['title'];?>
</strong>
		    </div>
		    <div class="card-body"><?php echo $_smarty_tpl->tpl_vars['widget']->value['code'];?>
</div>
		</div>
	<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
	<!-- Widgets -->
<?php }
}
}
