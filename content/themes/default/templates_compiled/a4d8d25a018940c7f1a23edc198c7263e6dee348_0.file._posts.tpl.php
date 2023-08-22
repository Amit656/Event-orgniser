<?php
/* Smarty version 3.1.33, created on 2020-04-02 14:22:26
  from '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/_posts.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e85f5222c04e0_81967657',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'a4d8d25a018940c7f1a23edc198c7263e6dee348' => 
    array (
      0 => '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/_posts.tpl',
      1 => 1585835649,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:__feeds_post.tpl' => 1,
  ),
),false)) {
function content_5e85f5222c04e0_81967657 (Smarty_Internal_Template $_smarty_tpl) {
?><!-- posts-filter -->
<div class="posts-filter">
    <span><?php if ($_smarty_tpl->tpl_vars['_title']->value) {
echo $_smarty_tpl->tpl_vars['_title']->value;
} else {
echo __("Recent Updates");
}?></span>
    <?php if (!$_smarty_tpl->tpl_vars['_filter']->value) {?>
	    <div class="float-right">
	        <div class="btn-group btn-group-sm js_posts-filter" data-value="all" title='<?php echo __("All");?>
'>
	            <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" data-display="static">
	                <i class="btn-group-icon fa fa-bars fa-fw"></i> <span class="btn-group-text"><?php echo __("All");?>
</span>
	            </button>
	            <div class="dropdown-menu dropdown-menu-right">
	                <div class="dropdown-item pointer" data-title='<?php echo __("All");?>
' data-value="all"><i class="fa fa-bars fa-fw mr10"></i><?php echo __("All");?>
</div>
	                <div class="dropdown-item pointer" data-title='<?php echo __("Text");?>
' data-value=""><i class="fa fa-comment fa-fw mr10"></i><?php echo __("Text");?>
</div>
	                <div class="dropdown-item pointer" data-title='<?php echo __("Links");?>
' data-value="link"><i class="fa fa-link fa-fw mr10"></i><?php echo __("Links");?>
</div>
	                <div class="dropdown-item pointer" data-title='<?php echo __("Media");?>
' data-value="media"><i class="fa fa-video fa-fw mr10"></i><?php echo __("Media");?>
</div>
	                <div class="dropdown-item pointer" data-title='<?php echo __("Photos");?>
' data-value="photos"><i class="fa fa-file-image fa-fw mr10"></i><?php echo __("Photos");?>
</div>
	                <div class="dropdown-item pointer" data-title='<?php echo __("Videos");?>
' data-value="video"><i class="fa fa-film fa-fw mr10"></i><?php echo __("Videos");?>
</div>
	                <div class="dropdown-item pointer" data-title='<?php echo __("Audios");?>
' data-value="audio"><i class="fa fa-music fa-fw mr10"></i><?php echo __("Audios");?>
</div>
	                <div class="dropdown-item pointer" data-title='<?php echo __("Files");?>
' data-value="file"><i class="fa fa-file-alt fa-fw mr10"></i><?php echo __("Files");?>
</div>
	                <div class="dropdown-item pointer" data-title='<?php echo __("Polls");?>
' data-value="poll"><i class="fa fa-chart-pie fa-fw mr10"></i><?php echo __("Polls");?>
</div>
	                <div class="dropdown-item pointer" data-title='<?php echo __("Products");?>
' data-value="product"><i class="fa fa-tag fa-fw mr10"></i><?php echo __("Products");?>
</div>
	                <div class="dropdown-item pointer" data-title='<?php echo __("Articles");?>
' data-value="article"><i class="fa fa-file-alt fa-fw mr10"></i><?php echo __("Articles");?>
</div>
	                <div class="dropdown-item pointer" data-title='<?php echo __("Maps");?>
' data-value="map"><i class="fa fa-map-marker fa-fw mr10"></i><?php echo __("Maps");?>
</div>
	            </div>
	        </div>
	    </div>
    <?php } elseif ($_smarty_tpl->tpl_vars['_filter']->value == "article") {?>
    	<?php if ($_smarty_tpl->tpl_vars['user']->value->_data['can_write_articles']) {?>
	    	<div class="float-right">
	    		<a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/blogs/new" class="btn btn-sm btn-primary">
	                <i class="fa fa-plus-circle mr5"></i><?php echo __("Add New Article");?>

	            </a>
	    	</div>
    	<?php }?>
    <?php } elseif ($_smarty_tpl->tpl_vars['_filter']->value == "product") {?>
        <div class="float-right">
            <button type="button" class="btn btn-sm btn-primary" data-toggle="modal" data-url="posts/product.php?do=create">
                <i class="fa fa-plus-circle mr5"></i><?php echo __("Add New Product");?>

            </button>
    	</div>
    <?php }?>
</div>
<!-- posts-filter -->

<!-- posts-loader -->
<div class="post x-hidden js_posts_loader">
	<div class="post-body">
		<div class="panel-effect">
			<div class="fake-effect fe-0"></div>
			<div class="fake-effect fe-1"></div>
			<div class="fake-effect fe-2"></div>
			<div class="fake-effect fe-3"></div>
			<div class="fake-effect fe-4"></div>
			<div class="fake-effect fe-5"></div>
			<div class="fake-effect fe-6"></div>
			<div class="fake-effect fe-7"></div>
			<div class="fake-effect fe-8"></div>
			<div class="fake-effect fe-9"></div>
			<div class="fake-effect fe-10"></div>
			<div class="fake-effect fe-11"></div>
		</div>
	</div>
</div>
<!-- posts-loader -->

<div class="js_posts_stream" data-get="<?php echo $_smarty_tpl->tpl_vars['_get']->value;?>
" data-filter="<?php if ($_smarty_tpl->tpl_vars['_filter']->value) {
echo $_smarty_tpl->tpl_vars['_filter']->value;
} else { ?>all<?php }?>" <?php if ($_smarty_tpl->tpl_vars['_id']->value) {?>data-id="<?php echo $_smarty_tpl->tpl_vars['_id']->value;?>
"<?php }?>>
	<?php if ($_smarty_tpl->tpl_vars['posts']->value) {?>
		<ul>
			<!-- posts -->
			<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['posts']->value, 'post');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['post']->value) {
?>
			<?php $_smarty_tpl->_subTemplateRender('file:__feeds_post.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_get'=>$_smarty_tpl->tpl_vars['_get']->value), 0, true);
?>
			<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
			<!-- posts -->
		</ul>

		<!-- see-more -->
		<div class="alert alert-post see-more mb20 js_see-more <?php if ($_smarty_tpl->tpl_vars['user']->value->_logged_in) {?>js_see-more-infinite<?php }?>" data-get="<?php echo $_smarty_tpl->tpl_vars['_get']->value;?>
" data-filter="<?php if ($_smarty_tpl->tpl_vars['_filter']->value) {
echo $_smarty_tpl->tpl_vars['_filter']->value;
} else { ?>all<?php }?>" <?php if ($_smarty_tpl->tpl_vars['_id']->value) {?>data-id="<?php echo $_smarty_tpl->tpl_vars['_id']->value;?>
"<?php }?>>
			<span><?php echo __("More Stories");?>
</span>
			<div class="loader loader_small x-hidden"></div>
		</div>
		<!-- see-more -->
	<?php } else { ?>
		<div class="js_posts_stream" data-get="<?php echo $_smarty_tpl->tpl_vars['_get']->value;?>
" data-filter="<?php if ($_smarty_tpl->tpl_vars['_filter']->value) {
echo $_smarty_tpl->tpl_vars['_filter']->value;
} else { ?>all<?php }?>" <?php if ($_smarty_tpl->tpl_vars['_id']->value) {?>data-id="<?php echo $_smarty_tpl->tpl_vars['_id']->value;?>
"<?php }?>>
			<ul>
				<!-- no posts -->
				<div class="text-center text-muted">
					<i class="fa fa-newspaper fa-4x"></i>
					<p class="mb10"><strong><?php echo __("No posts to show");?>
</strong></p>
				</div>
				<!-- no posts -->
			</ul>
		</div>
	<?php }?>
</div>

		
<?php }
}
