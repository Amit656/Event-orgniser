<?php
/* Smarty version 3.1.33, created on 2020-03-13 10:56:14
  from '/var/www/html/qrsmusic/content/themes/default/templates/_sidebar.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e6b66cea6a8f8_94242950',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '62f022c89ac06f8cb0af2306dc7906c3b493b24c' => 
    array (
      0 => '/var/www/html/qrsmusic/content/themes/default/templates/_sidebar.tpl',
      1 => 1584096965,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5e6b66cea6a8f8_94242950 (Smarty_Internal_Template $_smarty_tpl) {
?>
<div class="card">
    <div class="card-body with-nav">
        <ul class="main-side-nav">
            <!-- basic -->
            <li>
                <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/<?php echo $_smarty_tpl->tpl_vars['user']->value->_data['user_name'];?>
">
                    <img class="rounded-circle" src="<?php echo $_smarty_tpl->tpl_vars['user']->value->_data['user_picture'];?>
" alt="<?php echo $_smarty_tpl->tpl_vars['user']->value->_data['user_firstname'];?>
 <?php echo $_smarty_tpl->tpl_vars['user']->value->_data['user_lastname'];?>
">
                    <span><?php echo $_smarty_tpl->tpl_vars['user']->value->_data['user_firstname'];?>
 <?php echo $_smarty_tpl->tpl_vars['user']->value->_data['user_lastname'];?>
</span>
                </a>
            </li>

             <li>
                <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/calendar">
                    <img src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/content/themes/<?php echo $_smarty_tpl->tpl_vars['system']->value['theme'];?>
/images/icons/events.png">
                    <?php echo __("Calendar");?>

                </a>
            </li>

            <li <?php if ($_smarty_tpl->tpl_vars['page']->value == "events") {?>class="active"<?php }?>>
                <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/events">
                    <img src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/content/themes/<?php echo $_smarty_tpl->tpl_vars['system']->value['theme'];?>
/images/icons/article.png">
                    <?php echo __("Sessions");?>

                </a>
            </li>
            
            <li>
                <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/devices">
                    <img src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/content/themes/<?php echo $_smarty_tpl->tpl_vars['system']->value['theme'];?>
/images/icons/settings.png">
                    <?php echo __("Devices");?>

                </a>
            </li>
            
            <li>
                <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/gear">
                    <img src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/content/themes/<?php echo $_smarty_tpl->tpl_vars['system']->value['theme'];?>
/images/icons/synth.png">
                    <?php echo __("Gear");?>

                </a>
            </li>
            

            <li>
                <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/activities">
                    <img src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/content/themes/<?php echo $_smarty_tpl->tpl_vars['system']->value['theme'];?>
/images/icons/saved.png">
                    <?php echo __("Activities");?>

                </a>
            </li>

            <li>
                <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/reports">
                    <img src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/content/themes/<?php echo $_smarty_tpl->tpl_vars['system']->value['theme'];?>
/images/icons/reports.png">
                    <?php echo __("Reports");?>

                </a>
            </li>

            <?php if ($_smarty_tpl->tpl_vars['user']->value->_data['user_group'] == 1) {?>
                <li>
                    <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/admincp">
                        <img src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/content/themes/<?php echo $_smarty_tpl->tpl_vars['system']->value['theme'];?>
/images/icons/admin.png">
                        <?php echo __("Admin Panel");?>

                    </a>
                </li>
            <?php }?>
            <!-- basic -->

            <!-- favorites -->
            <li class="ptb5">
                <strong><small class="text-muted"><?php echo mb_strtoupper(__("favorites"), 'UTF-8');?>
</small></strong>
            </li>

            <li <?php if ($_smarty_tpl->tpl_vars['page']->value == "index" && $_smarty_tpl->tpl_vars['view']->value == '') {?>class="active"<?php }?>>
                <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
">
                    <img src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/content/themes/<?php echo $_smarty_tpl->tpl_vars['system']->value['theme'];?>
/images/icons/newfeed.png">
                    <?php echo __("News Feed");?>

                </a>
            </li>

            <?php if ($_smarty_tpl->tpl_vars['system']->value['blogs_enabled']) {?>
                <li <?php if ($_smarty_tpl->tpl_vars['page']->value == "index" && $_smarty_tpl->tpl_vars['view']->value == "articles") {?>class="active"<?php }?>>
                    <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/articles">
                        <img src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/content/themes/<?php echo $_smarty_tpl->tpl_vars['system']->value['theme'];?>
/images/icons/article.png">
                        <?php echo __("My Articles");?>

                    </a>
                </li>
            <?php }?>
            
            <?php if ($_smarty_tpl->tpl_vars['system']->value['market_enabled']) {?>
                <li <?php if ($_smarty_tpl->tpl_vars['page']->value == "index" && $_smarty_tpl->tpl_vars['view']->value == "products") {?>class="active"<?php }?>>
                    <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/products">
                        <img src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/content/themes/<?php echo $_smarty_tpl->tpl_vars['system']->value['theme'];?>
/images/icons/products.png">
                        <?php echo __("My Products");?>

                    </a>
                </li>
            <?php }?>

            <li <?php if ($_smarty_tpl->tpl_vars['page']->value == "index" && $_smarty_tpl->tpl_vars['view']->value == "saved") {?>class="active"<?php }?>>
                <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/saved">
                    <img src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/content/themes/<?php echo $_smarty_tpl->tpl_vars['system']->value['theme'];?>
/images/icons/saved.png">
                    <?php echo __("Saved Posts");?>

                </a>
            </li>
            <!-- favorites -->

            <!-- advertising -->
            <?php if ($_smarty_tpl->tpl_vars['system']->value['ads_enabled'] || $_smarty_tpl->tpl_vars['system']->value['packages_enabled']) {?>
                <li class="ptb5">
                    <small class="text-muted"><?php echo mb_strtoupper(__("Advertising"), 'UTF-8');?>
</small>
                </li>

                <?php if ($_smarty_tpl->tpl_vars['system']->value['ads_enabled']) {?>
                    <li <?php if ($_smarty_tpl->tpl_vars['page']->value == "ads") {?>class="active"<?php }?>>
                        <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/ads">
                            <img src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/content/themes/<?php echo $_smarty_tpl->tpl_vars['system']->value['theme'];?>
/images/icons/ads_manager.png">
                            <?php echo __("Ads Manager");?>

                        </a>
                    </li>
                <?php }?>

                <?php if ($_smarty_tpl->tpl_vars['system']->value['packages_enabled']) {?>
                    <li <?php if ($_smarty_tpl->tpl_vars['page']->value == "index" && $_smarty_tpl->tpl_vars['view']->value == "boosted_posts") {?>class="active"<?php }?>>
                        <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/boosted/posts">
                            <img src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/content/themes/<?php echo $_smarty_tpl->tpl_vars['system']->value['theme'];?>
/images/icons/boosted_posts.png">
                            <?php echo __("Boosted Posts");?>

                        </a>
                    </li>
                    
                    <li <?php if ($_smarty_tpl->tpl_vars['page']->value == "index" && $_smarty_tpl->tpl_vars['view']->value == "boosted_pages") {?>class="active"<?php }?>>
                        <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/boosted/pages">
                            <img src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/content/themes/<?php echo $_smarty_tpl->tpl_vars['system']->value['theme'];?>
/images/icons/boosted_pages.png">
                            <?php echo __("Boosted Pages");?>

                        </a>
                    </li>
                <?php }?>
            <?php }?>
            <!-- advertising -->

            <!-- explore -->
            <li class="ptb5">
                <small class="text-muted"><?php echo mb_strtoupper(__("explore"), 'UTF-8');?>
</small>
            </li>

            <li <?php if ($_smarty_tpl->tpl_vars['page']->value == "index" && $_smarty_tpl->tpl_vars['view']->value == "popular") {?>class="active"<?php }?>>
                <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/popular">
                    <img src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/content/themes/<?php echo $_smarty_tpl->tpl_vars['system']->value['theme'];?>
/images/icons/hashtag.png">
                    <?php echo __("Popular Posts");?>

                </a>
            </li>

            <li <?php if ($_smarty_tpl->tpl_vars['page']->value == "people") {?>class="active"<?php }?>>
                <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/people">
                    <img src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/content/themes/<?php echo $_smarty_tpl->tpl_vars['system']->value['theme'];?>
/images/icons/people.png">
                    <?php echo __("Find People");?>

                </a>
            </li>
            
            <li <?php if ($_smarty_tpl->tpl_vars['page']->value == "pages") {?>class="active"<?php }?>>
                <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/pages">
                    <img src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/content/themes/<?php echo $_smarty_tpl->tpl_vars['system']->value['theme'];?>
/images/icons/pages.png">
                    <?php echo __("Pages");?>

                </a>
            </li>

            <li <?php if ($_smarty_tpl->tpl_vars['page']->value == "groups") {?>class="active"<?php }?>>
                <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/groups">
                    <img src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/content/themes/<?php echo $_smarty_tpl->tpl_vars['system']->value['theme'];?>
/images/icons/groups.png">
                    <?php echo __("Groups");?>

                </a>
            </li>

                           <li>
                <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/messages">
                    <img src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/content/themes/<?php echo $_smarty_tpl->tpl_vars['system']->value['theme'];?>
/images/icons/chat.png">
                    <?php echo __("Messages");?>

                </a>
            </li>

            <li>
                <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/settings">
                    <img src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/content/themes/<?php echo $_smarty_tpl->tpl_vars['system']->value['theme'];?>
/images/icons/settings.png">
                    <?php echo __("Settings");?>

                </a>
            </li>

            <?php if ($_smarty_tpl->tpl_vars['system']->value['blogs_enabled']) {?>
                <li>
                    <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/blogs">
                        <img src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/content/themes/<?php echo $_smarty_tpl->tpl_vars['system']->value['theme'];?>
/images/icons/blogs.png">
                        <?php echo __("Blogs");?>

                    </a>
                </li>
            <?php }?>

            <?php if ($_smarty_tpl->tpl_vars['system']->value['market_enabled']) {?>
                <li>
                    <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/market">
                        <img src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/content/themes/<?php echo $_smarty_tpl->tpl_vars['system']->value['theme'];?>
/images/icons/market.png">
                        <?php echo __("Market");?>

                    </a>
                </li>
            <?php }?>

            <?php if ($_smarty_tpl->tpl_vars['system']->value['forums_enabled']) {?>
                <li>
                    <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/forums">
                        <img src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/content/themes/<?php echo $_smarty_tpl->tpl_vars['system']->value['theme'];?>
/images/icons/forums.png">
                        <?php echo __("Forums");?>

                    </a>
                </li>
            <?php }?>

            <?php if ($_smarty_tpl->tpl_vars['system']->value['movies_enabled']) {?>
                <li <?php if ($_smarty_tpl->tpl_vars['page']->value == "movies") {?>class="active"<?php }?>>
                    <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/movies">
                        <img src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/content/themes/<?php echo $_smarty_tpl->tpl_vars['system']->value['theme'];?>
/images/icons/movies.png">
                        <?php echo __("Movies");?>

                    </a>
                </li>
            <?php }?>

            <?php if ($_smarty_tpl->tpl_vars['system']->value['games_enabled']) {?>
                <li <?php if ($_smarty_tpl->tpl_vars['page']->value == "games") {?>class="active"<?php }?>>
                    <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/games">
                        <img src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/content/themes/<?php echo $_smarty_tpl->tpl_vars['system']->value['theme'];?>
/images/icons/games.png">
                        <?php echo __("Games");?>

                    </a>
                </li>
            <?php }?>
            <!-- explore -->
        </ul>
    </div>
</div><?php }
}
