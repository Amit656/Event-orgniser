<?php
/* Smarty version 3.1.33, created on 2020-04-02 14:22:26
  from '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/index.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e85f5221a3d83_18039405',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '772787dc909bebf8cb63986e54e8a2764835c825' => 
    array (
      0 => '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/index.tpl',
      1 => 1585835649,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:_head.tpl' => 1,
    'file:_header.tpl' => 1,
    'file:_sign_form.tpl' => 1,
    'file:_footer.links.tpl' => 1,
    'file:_sidebar.tpl' => 1,
    'file:_announcements.tpl' => 1,
    'file:_publisher.tpl' => 1,
    'file:_boosted_post.tpl' => 1,
    'file:_posts.tpl' => 6,
    'file:__feeds_page.tpl' => 2,
    'file:_ads_campaigns.tpl' => 1,
    'file:_ads.tpl' => 1,
    'file:_widget.tpl' => 1,
    'file:__feeds_user.tpl' => 1,
    'file:__feeds_group.tpl' => 1,
    'file:__feeds_event.tpl' => 1,
    'file:_footer.tpl' => 1,
  ),
),false)) {
function content_5e85f5221a3d83_18039405 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender('file:_head.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
$_smarty_tpl->_subTemplateRender('file:_header.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<!-- page content -->
<?php if (!$_smarty_tpl->tpl_vars['user']->value->_logged_in) {?>
    
    <div class="container pt30">
        <div class="index-intro">
            <h1>
                <?php echo __("Welcome to");?>
 <?php echo $_smarty_tpl->tpl_vars['system']->value['system_title'];?>

            </h1>
            <p>
                <?php echo __('');?>

            </p>
        </div>
        <div class="row">
            <div class="col-md-6 col-lg-7">
                <img style="width: 100%; max-height: 500px;" class="d-none d-md-block" src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/content/themes/<?php echo $_smarty_tpl->tpl_vars['system']->value['theme'];?>
/images/home/QRSLogo.png">
            </div>

            <div class="col-md-6 col-lg-5">
                <?php $_smarty_tpl->_subTemplateRender('file:_sign_form.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
            </div>
        </div>
    </div>

    <?php $_smarty_tpl->_subTemplateRender('file:_footer.links.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<?php } else { ?>
		
	<?php if ($_smarty_tpl->tpl_vars['view']->value == "calendar") {?>
		<?php $_smarty_tpl->_assignInScope('bypassSideBar', true);?>
	<?php } elseif ($_smarty_tpl->tpl_vars['view']->value == "devices") {?>
		<?php $_smarty_tpl->_assignInScope('bypassSideBar', true);?>
	<?php } elseif ($_smarty_tpl->tpl_vars['view']->value == "gear") {?>
		<?php $_smarty_tpl->_assignInScope('bypassSideBar', true);?>
	<?php } elseif ($_smarty_tpl->tpl_vars['view']->value == "activities") {?>
		<?php $_smarty_tpl->_assignInScope('bypassSideBar', true);?>
	<?php } elseif ($_smarty_tpl->tpl_vars['view']->value == "reports") {?>
		<?php $_smarty_tpl->_assignInScope('bypassSideBar', true);?>
	<?php } else { ?>
		<?php $_smarty_tpl->_assignInScope('bypassSideBar', false);?>
	<?php }?>
	
    <div class="container mt20 offcanvas">
        <div class="row">

            <!-- side panel -->
            <div class="col-md-4 col-lg-3 offcanvas-sidebar js_sticky-sidebar">
                <?php $_smarty_tpl->_subTemplateRender('file:_sidebar.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
            </div>
            <!-- side panel -->

            <!-- content panel -->
            <div class="col-md-8 col-lg-9 offcanvas-mainbar">
                <div class="row">
                    <!-- center panel -->
					<?php if ($_smarty_tpl->tpl_vars['bypassSideBar']->value) {?>
					<div class="col-sm">
					<?php } else { ?>
					<div class="col-lg-8">
					<?php }?>
                        <!-- announcments -->
                        <?php $_smarty_tpl->_subTemplateRender('file:_announcements.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
                        <!-- announcments -->

                        <?php if ($_smarty_tpl->tpl_vars['view']->value == '') {?>

                            <!-- stories -->
                            <?php if ($_smarty_tpl->tpl_vars['system']->value['stories_enabled']) {?>
                                <div class="card">
                                    <div class="card-header bg-transparent border-bottom-0">
                                        <strong class="text-muted"><?php echo __("Stories");?>
</strong>
                                        <div class="d-none d-sm-block text-muted text-clickable float-right">
                                            <i class="fa fa-info-circle" data-toggle="tooltip" data-placement="top" title='<?php echo __("Stories are photos and videos that only last 24 hours");?>
'></i>
                                        </div>
                                    </div>
                                    <div class="card-body pt5 stories-wrapper">
                                        <div id="stories" data-json='<?php echo $_smarty_tpl->tpl_vars['stories']->value["json"];?>
'>
                                            <div class="add-story" data-toggle="modal" data-url="posts/story.php?do=create">
                                                <div class="img" style="background-image:url(<?php echo $_smarty_tpl->tpl_vars['user']->value->_data['user_picture'];?>
);">
                                                </div>
                                                <div class="add">
                                                    <i class="fa fa-plus-circle"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <?php }?>
                            <!-- stories -->

                            <!-- publisher -->
                            <?php $_smarty_tpl->_subTemplateRender('file:_publisher.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_handle'=>"me",'_privacy'=>true), 0, false);
?>
                            <!-- publisher -->

                            <!-- boosted post -->
                            <?php if ($_smarty_tpl->tpl_vars['boosted_post']->value) {?>
                                <?php $_smarty_tpl->_subTemplateRender('file:_boosted_post.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('post'=>$_smarty_tpl->tpl_vars['boosted_post']->value), 0, false);
?>
                            <?php }?>
                            <!-- boosted post -->

                            <!-- posts -->
                            <?php $_smarty_tpl->_subTemplateRender('file:_posts.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_get'=>"newsfeed"), 0, false);
?>
                            <!-- posts -->

						
							
                        <?php } elseif ($_smarty_tpl->tpl_vars['view']->value == "popular") {?>
                            <!-- saved posts -->
                            <?php $_smarty_tpl->_subTemplateRender('file:_posts.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_get'=>"popular",'_title'=>__("Popular Posts")), 0, true);
?>
                            <!-- saved posts -->

                        <?php } elseif ($_smarty_tpl->tpl_vars['view']->value == "saved") {?>
                            <!-- saved posts -->
                            <?php $_smarty_tpl->_subTemplateRender('file:_posts.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_get'=>"saved",'_title'=>__("Saved Posts")), 0, true);
?>
                            <!-- saved posts -->

                        <?php } elseif ($_smarty_tpl->tpl_vars['view']->value == "articles") {?>
                            <!-- articles posts -->
                            <?php $_smarty_tpl->_subTemplateRender('file:_posts.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_get'=>"posts_profile",'_id'=>$_smarty_tpl->tpl_vars['user']->value->_data['user_id'],'_filter'=>"article",'_title'=>__("My Articles")), 0, true);
?>
                            <!-- articles posts -->

                        <?php } elseif ($_smarty_tpl->tpl_vars['view']->value == "products") {?>
                            <!-- products posts -->
                            <?php $_smarty_tpl->_subTemplateRender('file:_posts.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_get'=>"posts_profile",'_id'=>$_smarty_tpl->tpl_vars['user']->value->_data['user_id'],'_filter'=>"product",'_title'=>__("My Products")), 0, true);
?>
                            <!-- products posts -->

                        <?php } elseif ($_smarty_tpl->tpl_vars['view']->value == "boosted_posts") {?>
                            <?php if ($_smarty_tpl->tpl_vars['user']->value->_is_admin || $_smarty_tpl->tpl_vars['user']->value->_data['user_subscribed']) {?>
                                <!-- boosted posts -->
                                <?php $_smarty_tpl->_subTemplateRender('file:_posts.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_get'=>"boosted",'_title'=>__("My Boosted Posts")), 0, true);
?>
                                <!-- boosted posts -->
                            <?php } else { ?>
                                <!-- upgrade -->
                                <div class="alert alert-warning">
                                    <div class="icon">
                                        <i class="fa fa-id-card fa-2x"></i>
                                    </div>
                                    <div class="text">
                                        <strong><?php echo __("Membership");?>
</strong><br>
                                        <?php echo __("Choose the Plan That's Right for You");?>
, <?php echo __("Check the package from");?>
 <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/packages"><?php echo __("Here");?>
</a>
                                    </div>
                                </div>
                                <div class="text-center">
                                    <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/packages" class="btn btn-primary"><i class="fa fa-rocket mr5"></i><?php echo __("Upgrade to Pro");?>
</a>
                                </div>
                                <!-- upgrade -->
                            <?php }?>

                        <?php } elseif ($_smarty_tpl->tpl_vars['view']->value == "boosted_pages") {?>
                            <?php if ($_smarty_tpl->tpl_vars['user']->value->_is_admin || $_smarty_tpl->tpl_vars['user']->value->_data['user_subscribed']) {?>
                                <div class="card">
                                    <div class="card-header">
                                        <strong><?php echo __("My Boosted Pages");?>
</strong>
                                    </div>
                                    <div class="card-body">
                                        <?php if ($_smarty_tpl->tpl_vars['boosted_pages']->value) {?>
                                            <ul>
                                                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['boosted_pages']->value, '_page');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['_page']->value) {
?>
                                                    <?php $_smarty_tpl->_subTemplateRender('file:__feeds_page.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_tpl'=>"list"), 0, true);
?>
                                                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                            </ul>

                                            <?php if (count($_smarty_tpl->tpl_vars['boosted_pages']->value) >= $_smarty_tpl->tpl_vars['system']->value['max_results_even']) {?>
                                            <!-- see-more -->
                                            <div class="alert alert-info see-more js_see-more" data-get="boosted_pages">
                                                <span><?php echo __("See More");?>
</span>
                                                <div class="loader loader_small x-hidden"></div>
                                            </div>
                                            <!-- see-more -->
                                            <?php }?>
                                        <?php } else { ?>
                                            <p class="text-center text-muted mt10">
                                                <?php echo __("No pages to show");?>

                                            </p>
                                        <?php }?>
                                    </div>
                                </div>
                            <?php } else { ?>
                                <!-- upgrade -->
                                <div class="alert alert-warning">
                                    <div class="icon">
                                        <i class="fa fa-id-card fa-2x"></i>
                                    </div>
                                    <div class="text">
                                        <strong><?php echo __("Membership");?>
</strong><br>
                                        <?php echo __("Choose the Plan That's Right for You");?>
, <?php echo __("Check the package from");?>
 <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/packages"><?php echo __("Here");?>
</a>
                                    </div>
                                </div>
                                <div class="text-center">
                                    <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/packages" class="btn btn-primary"><i class="fa fa-rocket mr5"></i><?php echo __("Upgrade to Pro");?>
</a>
                                </div>
                                <!-- upgrade -->
                            <?php }?>

                        <?php }?>
                    </div>
                    <!-- center panel -->

										<?php if (!$_smarty_tpl->tpl_vars['bypassSideBar']->value) {?>
                    <!-- right panel -->
                    <div class="col-lg-4 js_sticky-sidebar">
                        
                        <!-- pro members -->
                        <?php if (count($_smarty_tpl->tpl_vars['pro_members']->value) > 0) {?>
                            <div class="card bg-gradient-indigo border-0">
                                <div class="card-header ptb20 bg-transparent border-bottom-0">
                                    <?php if ($_smarty_tpl->tpl_vars['system']->value['packages_enabled'] && !$_smarty_tpl->tpl_vars['user']->value->_data['user_subscribed']) {?>
                                        <div class="float-right">
                                            <small><a class="text-white text-underline" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/packages"><?php echo __("Upgrade");?>
</a></small>
                                        </div>
                                    <?php }?>
                                    <h6 class="pb0"><i class="fa fa-bolt mr5"></i> <?php echo __("Pro Users");?>
</h6>
                                </div>
                                <div class="card-body pt0 plr5">
                                    <div class="pro-box-wrapper <?php if (count($_smarty_tpl->tpl_vars['pro_members']->value) > 3) {?>js_slick<?php } else { ?>full-opacity<?php }?>">
                                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['pro_members']->value, '_member');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['_member']->value) {
?>
                                            <a class="user-box text-white" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/<?php echo $_smarty_tpl->tpl_vars['_member']->value['user_name'];?>
">
                                                <img alt="<?php echo $_smarty_tpl->tpl_vars['_member']->value['user_firstname'];?>
 <?php echo $_smarty_tpl->tpl_vars['_member']->value['user_lastname'];?>
" src="<?php echo $_smarty_tpl->tpl_vars['_member']->value['user_picture'];?>
" />
                                                <div class="name" title="<?php echo $_smarty_tpl->tpl_vars['_member']->value['user_firstname'];?>
 <?php echo $_smarty_tpl->tpl_vars['_member']->value['user_lastname'];?>
">
                                                    <?php echo $_smarty_tpl->tpl_vars['_member']->value['user_firstname'];?>
 <?php echo $_smarty_tpl->tpl_vars['_member']->value['user_lastname'];?>

                                                </div>
                                            </a>
                                        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                    </div>
                                </div>
                            </div>
                        <?php }?>
                        <!-- pro members -->

                        <!-- boosted pages -->
                        <?php if (count($_smarty_tpl->tpl_vars['promoted_pages']->value) > 0) {?>
                            <div class="card bg-gradient-teal border-0">
                                <div class="card-header ptb20 bg-transparent border-bottom-0">
                                    <?php if ($_smarty_tpl->tpl_vars['system']->value['packages_enabled'] && !$_smarty_tpl->tpl_vars['user']->value->_data['user_subscribed']) {?>
                                        <div class="float-right">
                                            <small><a class="text-white text-underline" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/packages"><?php echo __("Upgrade");?>
</a></small>
                                        </div>
                                    <?php }?>
                                    <h6 class="pb0"><i class="fa fa-bullhorn mr5"></i> <?php echo __("Pro Pages");?>
</h6>
                                </div>
                                <div class="card-body pt0 plr5">
                                    <div class="pro-box-wrapper <?php if (count($_smarty_tpl->tpl_vars['promoted_pages']->value) > 3) {?>js_slick<?php } else { ?>full-opacity<?php }?>">
                                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['promoted_pages']->value, '_page');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['_page']->value) {
?>
                                            <a class="user-box text-white" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/pages/<?php echo $_smarty_tpl->tpl_vars['_page']->value['page_name'];?>
">
                                                <img alt="<?php echo $_smarty_tpl->tpl_vars['_page']->value['page_title'];?>
" src="<?php echo $_smarty_tpl->tpl_vars['_page']->value['page_picture'];?>
" />
                                                <div class="name" title="<?php echo $_smarty_tpl->tpl_vars['_page']->value['page_title'];?>
">
                                                    <?php echo $_smarty_tpl->tpl_vars['_page']->value['page_title'];?>

                                                </div>
                                            </a>
                                        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                    </div>
                                </div>
                            </div>
                        <?php }?>
                        <!-- boosted pages -->

                        <?php $_smarty_tpl->_subTemplateRender('file:_ads_campaigns.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
                        <?php $_smarty_tpl->_subTemplateRender('file:_ads.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
                        <?php $_smarty_tpl->_subTemplateRender('file:_widget.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

                        <!-- people you may know -->
                        <?php if (count($_smarty_tpl->tpl_vars['user']->value->_data['new_people']) > 0) {?>
                            <div class="card">
                                <div class="card-header bg-transparent">
                                    <div class="float-right">
                                        <small><a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/people"><?php echo __("See All");?>
</a></small>
                                    </div>
                                    <?php echo __("Friend Suggestions");?>

                                </div>
                                <div class="card-body with-list">
                                    <ul>
                                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['user']->value->_data['new_people'], '_user');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['_user']->value) {
?>
                                        <?php $_smarty_tpl->_subTemplateRender('file:__feeds_user.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_tpl'=>"list",'_connection'=>"add",'_small'=>true), 0, true);
?>
                                        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                    </ul>
                                </div>
                            </div>
                        <?php }?>
                         <!-- people you may know -->

                        <!-- suggested pages -->
                        <?php if (count($_smarty_tpl->tpl_vars['new_pages']->value) > 0) {?>
                            <div class="card">
                                <div class="card-header bg-transparent">
                                    <div class="float-right">
                                        <small><a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/pages"><?php echo __("See All");?>
</a></small>
                                    </div>
                                    <?php echo __("Suggested Pages");?>

                                </div>
                                <div class="card-body with-list">
                                    <ul>
                                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['new_pages']->value, '_page');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['_page']->value) {
?>
                                        <?php $_smarty_tpl->_subTemplateRender('file:__feeds_page.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_tpl'=>"list"), 0, true);
?>
                                        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                    </ul>
                                </div>
                            </div>
                        <?php }?>
                        <!-- suggested pages -->

                        <!-- suggested groups -->
                        <?php if (count($_smarty_tpl->tpl_vars['new_groups']->value) > 0) {?>
                            <div class="card">
                                <div class="card-header bg-transparent">
                                    <div class="float-right">
                                        <small><a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/groups"><?php echo __("See All");?>
</a></small>
                                    </div>
                                    <?php echo __("Suggested Groups");?>

                                </div>
                                <div class="card-body with-list">
                                    <ul>
                                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['new_groups']->value, '_group');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['_group']->value) {
?>
                                        <?php $_smarty_tpl->_subTemplateRender('file:__feeds_group.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_tpl'=>"list"), 0, true);
?>
                                        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                    </ul>
                                </div>
                            </div>
                        <?php }?>
                        <!-- suggested groups -->

                        <!-- suggested events -->
                        <?php if (count($_smarty_tpl->tpl_vars['new_events']->value) > 0) {?>
                            <div class="card">
                                <div class="card-header bg-transparent">
                                    <div class="float-right">
                                        <small><a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/events"><?php echo __("See All");?>
</a></small>
                                    </div>
                                    <?php echo __("Suggested Events");?>

                                </div>
                                <div class="card-body with-list">
                                    <ul>
                                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['new_events']->value, '_event');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['_event']->value) {
?>
                                        <?php $_smarty_tpl->_subTemplateRender('file:__feeds_event.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_tpl'=>"list",'_small'=>true), 0, true);
?>
                                        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                    </ul>
                                </div>
                            </div>
                        <?php }?>
                        <!-- suggested events -->

                        <!-- mini footer -->
                        <?php if (count($_smarty_tpl->tpl_vars['user']->value->_data['new_people']) > 0 || count($_smarty_tpl->tpl_vars['new_pages']->value) > 0 || count($_smarty_tpl->tpl_vars['new_groups']->value) > 0 || count($_smarty_tpl->tpl_vars['new_events']->value) > 0) {?>
                            <div class="mtb20 plr10 d-none d-sm-block">
                                <div class="col-12 mb5">
                                    <?php if (count($_smarty_tpl->tpl_vars['static_pages']->value) > 0) {?>
                                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['static_pages']->value, 'static_page', true);
$_smarty_tpl->tpl_vars['static_page']->iteration = 0;
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['static_page']->value) {
$_smarty_tpl->tpl_vars['static_page']->iteration++;
$_smarty_tpl->tpl_vars['static_page']->last = $_smarty_tpl->tpl_vars['static_page']->iteration === $_smarty_tpl->tpl_vars['static_page']->total;
$__foreach_static_page_7_saved = $_smarty_tpl->tpl_vars['static_page'];
?>
                                            <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/static/<?php echo $_smarty_tpl->tpl_vars['static_page']->value['page_url'];?>
">
                                                <?php echo $_smarty_tpl->tpl_vars['static_page']->value['page_title'];?>

                                            </a><?php if (!$_smarty_tpl->tpl_vars['static_page']->last) {?> · <?php }?>
                                        <?php
$_smarty_tpl->tpl_vars['static_page'] = $__foreach_static_page_7_saved;
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
                                <div class="col-12">
                                    &copy; <?php echo date('Y');?>
 <?php echo $_smarty_tpl->tpl_vars['system']->value['system_title'];?>
 · <span class="text-link" data-toggle="modal" data-url="#translator"><?php echo $_smarty_tpl->tpl_vars['system']->value['language']['title'];?>
</span>
                                </div>
                            </div>
                        <?php }?>
                        <!-- mini footer -->
                        
                    </div>
                    <!-- right panel -->
					<?php }?>
						
					
					
                </div>
            </div>
            <!-- content panel -->
				
			<?php if ($_smarty_tpl->tpl_vars['bypassSideBar']->value) {?>
				 <!-- footer -->
				 <div class="mtb20 plr10 d-none d-sm-block">
						<div class="col-12 mb5">
							<?php if (count($_smarty_tpl->tpl_vars['static_pages']->value) > 0) {?>
								<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['static_pages']->value, 'static_page', true);
$_smarty_tpl->tpl_vars['static_page']->iteration = 0;
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['static_page']->value) {
$_smarty_tpl->tpl_vars['static_page']->iteration++;
$_smarty_tpl->tpl_vars['static_page']->last = $_smarty_tpl->tpl_vars['static_page']->iteration === $_smarty_tpl->tpl_vars['static_page']->total;
$__foreach_static_page_8_saved = $_smarty_tpl->tpl_vars['static_page'];
?>
									<a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/static/<?php echo $_smarty_tpl->tpl_vars['static_page']->value['page_url'];?>
">
										<?php echo $_smarty_tpl->tpl_vars['static_page']->value['page_title'];?>

									</a><?php if (!$_smarty_tpl->tpl_vars['static_page']->last) {?> · <?php }?>
								<?php
$_smarty_tpl->tpl_vars['static_page'] = $__foreach_static_page_8_saved;
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
						<div class="col-12">
							&copy; <?php echo date('Y');?>
 <?php echo $_smarty_tpl->tpl_vars['system']->value['system_title'];?>
 · <span class="text-link" data-toggle="modal" data-url="#translator"><?php echo $_smarty_tpl->tpl_vars['system']->value['language']['title'];?>
</span>
						</div>
					</div>
				<!-- footer -->
			<?php }?>	
				
        </div>
    </div>

<?php }?>
<!-- page content -->

<?php $_smarty_tpl->_subTemplateRender('file:_footer.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
