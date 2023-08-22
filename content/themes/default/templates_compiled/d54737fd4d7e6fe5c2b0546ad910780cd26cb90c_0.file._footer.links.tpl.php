<?php
/* Smarty version 3.1.33, created on 2020-04-02 14:22:26
  from '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/_footer.links.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e85f5222eaf15_92049988',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd54737fd4d7e6fe5c2b0546ad910780cd26cb90c' => 
    array (
      0 => '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/_footer.links.tpl',
      1 => 1585835649,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5e85f5222eaf15_92049988 (Smarty_Internal_Template $_smarty_tpl) {
?><!-- footer links -->
<div class="container">
	<div class="row footer <?php if ($_smarty_tpl->tpl_vars['page']->value == 'index' && !$_smarty_tpl->tpl_vars['user']->value->_logged_in) {?>border-top-0<?php }?>">
		<div class="col-sm-6">
			&copy; <?php echo date('Y');?>
 <?php echo $_smarty_tpl->tpl_vars['system']->value['system_title'];?>
 · <span class="text-link" data-toggle="modal" data-url="#translator"><?php echo $_smarty_tpl->tpl_vars['system']->value['language']['title'];?>
</span>
		</div>

		<div class="col-sm-6 links">
			<?php if (count($_smarty_tpl->tpl_vars['static_pages']->value) > 0) {?>
				<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['static_pages']->value, 'static_page', true);
$_smarty_tpl->tpl_vars['static_page']->iteration = 0;
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['static_page']->value) {
$_smarty_tpl->tpl_vars['static_page']->iteration++;
$_smarty_tpl->tpl_vars['static_page']->last = $_smarty_tpl->tpl_vars['static_page']->iteration === $_smarty_tpl->tpl_vars['static_page']->total;
$__foreach_static_page_21_saved = $_smarty_tpl->tpl_vars['static_page'];
?>
					<a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/static/<?php echo $_smarty_tpl->tpl_vars['static_page']->value['page_url'];?>
">
						<?php echo __($_smarty_tpl->tpl_vars['static_page']->value['page_title']);?>

					</a><?php if (!$_smarty_tpl->tpl_vars['static_page']->last) {?> · <?php }?>
				<?php
$_smarty_tpl->tpl_vars['static_page'] = $__foreach_static_page_21_saved;
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
			<?php }?>
			<?php if ($_smarty_tpl->tpl_vars['system']->value['contact_enabled']) {?>
				 · 
				<a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/contacts">
					<?php echo __("Contacts");?>

				</a>
			<?php }?>
			<?php if ($_smarty_tpl->tpl_vars['system']->value['directory_enabled']) {?>
				 · 
				<a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/directory">
					<?php echo __("Directory");?>

				</a>
			<?php }?>
			<?php if ($_smarty_tpl->tpl_vars['system']->value['market_enabled']) {?>
                 · 
                <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/market">
                    <?php echo __("Market");?>

                </a>
            <?php }?>
            <?php if ($_smarty_tpl->tpl_vars['system']->value['forums_enabled']) {?>
                 · 
                <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/forums">
                    <?php echo __("Forums");?>

                </a>
            <?php }?>
		</div>
	</div>
</div>
<!-- footer links --><?php }
}
