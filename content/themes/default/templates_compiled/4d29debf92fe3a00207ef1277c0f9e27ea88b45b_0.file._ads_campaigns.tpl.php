<?php
/* Smarty version 3.1.33, created on 2020-04-02 14:22:26
  from '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/_ads_campaigns.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e85f5222cc396_96526042',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '4d29debf92fe3a00207ef1277c0f9e27ea88b45b' => 
    array (
      0 => '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/_ads_campaigns.tpl',
      1 => 1585835649,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5e85f5222cc396_96526042 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'/var/www/html/new_working_dir_QRS/trunk/qrsmusic/includes/libs/Smarty/plugins/modifier.truncate.php','function'=>'smarty_modifier_truncate',),));
if ($_smarty_tpl->tpl_vars['ads_campaigns']->value) {?>
	<!-- ads campaigns -->
	<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['ads_campaigns']->value, 'campaign');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['campaign']->value) {
?>
		<div class="card">
		    <div class="card-header bg-transparent">
		        <i class="fa fa-bullhorn fa-fw mr5 yellow"></i><?php echo __("Sponsored");?>

		    </div>
		    <div class="card-body <?php if ($_smarty_tpl->tpl_vars['campaign']->value['campaign_bidding'] == 'click') {?>js_ads-click-campaign<?php }?>" data-id="<?php echo $_smarty_tpl->tpl_vars['campaign']->value['campaign_id'];?>
">
		    	<a href="<?php echo $_smarty_tpl->tpl_vars['campaign']->value['ads_url'];?>
" target="_blank">
		    		<img class="img-fluid" src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_uploads'];?>
/<?php echo $_smarty_tpl->tpl_vars['campaign']->value['ads_image'];?>
">
		    	</a>
		    	<?php if ($_smarty_tpl->tpl_vars['campaign']->value['ads_title'] || $_smarty_tpl->tpl_vars['campaign']->value['ads_description']) {?>
			    	<div class="ptb5 plr10">
			    		<p class="ads-title">
				    		<a href="<?php echo $_smarty_tpl->tpl_vars['campaign']->value['ads_url'];?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['campaign']->value['ads_title'];?>
</a>
				    	</p>
				    	<p class="ads-descrition">
				    		<?php echo smarty_modifier_truncate($_smarty_tpl->tpl_vars['campaign']->value['ads_description'],200);?>

				    	</p>
			    	</div>
		    	<?php }?>
		    </div>
		</div>
	<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
	<!-- ads campaigns -->
<?php }
}
}
