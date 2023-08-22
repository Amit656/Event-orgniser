<?php
/* Smarty version 3.1.33, created on 2020-03-13 10:44:20
  from '/var/www/html/qrsmusic/content/themes/default/templates/admin.settings.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e6b6404568a26_28729739',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '26e4b8f98fbb140c6deeec3eb532994d5367b848' => 
    array (
      0 => '/var/www/html/qrsmusic/content/themes/default/templates/admin.settings.tpl',
      1 => 1573225137,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5e6b6404568a26_28729739 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'/var/www/html/qrsmusic/includes/libs/Smarty/plugins/modifier.date_format.php','function'=>'smarty_modifier_date_format',),));
?>
<div class="card">

    <?php if ($_smarty_tpl->tpl_vars['sub_view']->value == '') {?>

        <!-- card-header -->
        <div class="card-header with-icon with-nav">
            <!-- panel title -->
            <div class="mb20">
                <i class="fa fa-cog mr10"></i><?php echo __("Settings");?>

            </div>
            <!-- panel title -->

            <!-- panel nav -->
            <ul class="nav nav-tabs">
                <li class="nav-item">
                    <a class="nav-link active" href="#General" data-toggle="tab">
                        <i class="fa fa-server fa-fw mr5"></i><strong><?php echo __("General");?>
</strong>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#Features" data-toggle="tab">
                        <i class="fa fa-microchip fa-fw mr5"></i><strong><?php echo __("Features");?>
</strong>
                    </a>
                </li>
            </ul>
            <!-- panel nav -->
        </div>
        <!-- card-header -->

        <!-- tab-content -->
        <div class="tab-content">
            <!-- General -->
            <div class="tab-pane active" id="General">
                <form class="js_ajax-forms " data-url="admin/settings.php?edit=general_settings">
                    <div class="card-body">
                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"><?php echo __("Website Public");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Make the website public to allow non logged users to view website content");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="system_public">
                                    <input type="checkbox" name="system_public" id="system_public" <?php if ($_smarty_tpl->tpl_vars['system']->value['system_public']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"><?php echo __("Website Live");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Turn the entire website On and Off");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="system_live">
                                    <input type="checkbox" name="system_live" id="system_live" <?php if ($_smarty_tpl->tpl_vars['system']->value['system_live']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Shutdown Message");?>

                            </label>
                            <div class="col-md-9">
                                <textarea class="form-control" name="system_message" rows="3"><?php echo $_smarty_tpl->tpl_vars['system']->value['system_message'];?>
</textarea>
                                <span class="form-text">
                                    <?php echo __("The text that is presented when the site is closed");?>

                                </span>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Website Title");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="system_title" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_title'];?>
">
                                <span class="form-text">
                                    <?php echo __("Title of your website");?>

                                </span>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Website Description");?>

                            </label>
                            <div class="col-md-9">
                                <textarea class="form-control" name="system_description" rows="3"><?php echo $_smarty_tpl->tpl_vars['system']->value['system_description'];?>
</textarea>
                                <span class="form-text">
                                    <?php echo __("Description of your website");?>

                                </span>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Website Keywords");?>

                            </label>
                            <div class="col-md-9">
                                <textarea class="form-control" name="system_keywords" rows="3"><?php echo $_smarty_tpl->tpl_vars['system']->value['system_keywords'];?>
</textarea>
                                <span class="form-text">
                                    <?php echo __("Example: social, sngine, social site");?>

                                </span>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Website Email");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="system_email" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_email'];?>
">
                                <span class="form-text">
                                    <?php echo __("The contact email that all messages send to");?>

                                </span>
                            </div>
                        </div>

                        <!-- success -->
                        <div class="alert alert-success mb0 x-hidden"></div>
                        <!-- success -->

                        <!-- error -->
                        <div class="alert alert-danger mb0 x-hidden"></div>
                        <!-- error -->
                    </div>
                    <div class="card-footer text-right">
                        <button type="submit" class="btn btn-primary"><?php echo __("Save Changes");?>
</button>
                    </div>
                </form>
            </div>
            <!-- General -->

            <!-- Features -->
            <div class="tab-pane" id="Features">
                <form class="js_ajax-forms " data-url="admin/settings.php?edit=features_settings">
                    <div class="card-body">
                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"><?php echo __("Contact Us");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Turn the contact us page On and Off");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="contact_enabled">
                                    <input type="checkbox" name="contact_enabled" id="contact_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['contact_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"> <?php echo __("Directory");?>
</div>
                                <div class="form-text d-none d-sm-block">
                                    <?php echo __("Enable the directory for better SEO results");?>
<br>
                                    <?php echo __("Make the website public to allow non logged users to view website content");?>

                                </div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="directory_enabled">
                                    <input type="checkbox" name="directory_enabled" id="directory_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['directory_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"><?php echo __("Pages");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Users can create pages or only admins/moderators");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="pages_enabled">
                                    <input type="checkbox" name="pages_enabled" id="pages_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['pages_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"><?php echo __("Groups");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Users can create groups or only admins/moderators");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="groups_enabled">
                                    <input type="checkbox" name="groups_enabled" id="groups_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['groups_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"><?php echo __("Events");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Users can create events or only admins/moderators");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="events_enabled">
                                    <input type="checkbox" name="events_enabled" id="events_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['events_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"><?php echo __("Blogs");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Allow users to create blogs");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="blogs_enabled">
                                    <input type="checkbox" name="blogs_enabled" id="blogs_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['blogs_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"><?php echo __("Users Can Write Articles?");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Users can write articles or only admins/moderators");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="users_blogs_enabled">
                                    <input type="checkbox" name="users_blogs_enabled" id="users_blogs_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['users_blogs_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"><?php echo __("Market");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Allow users to sell/buy products");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="market_enabled">
                                    <input type="checkbox" name="market_enabled" id="market_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['market_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"><?php echo __("Movies");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Turn the movies On and Off");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="movies_enabled">
                                    <input type="checkbox" name="movies_enabled" id="movies_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['movies_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"><?php echo __("Games");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Turn the games On and Off");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="games_enabled">
                                    <input type="checkbox" name="games_enabled" id="games_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['games_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"><?php echo __("DayTime Messages");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Turn the DayTime Messages (Good Morning, Afternoon, Evening) On and Off");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="daytime_msg_enabled">
                                    <input type="checkbox" name="daytime_msg_enabled" id="daytime_msg_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['daytime_msg_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"><?php echo __("Profile Visit Notification");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Turn the profile visit notification On and Off");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="profile_notification_enabled">
                                    <input type="checkbox" name="profile_notification_enabled" id="profile_notification_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['profile_notification_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"><?php echo __("Browser Notifications");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Turn the browser notifications On and Off");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="browser_notifications_enabled">
                                    <input type="checkbox" name="browser_notifications_enabled" id="browser_notifications_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['browser_notifications_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"><?php echo __("Noty Notifications");?>
</div>
                                <div class="form-text d-none d-sm-block">
                                    <?php echo __("Turn the noty notifications On and Off");?>
 (<a target="_blank" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/content/themes/<?php echo $_smarty_tpl->tpl_vars['system']->value['theme'];?>
/images/noty_notification.png"><?php echo __("preview");?>
</a>)
                                </div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="noty_notifications_enabled">
                                    <input type="checkbox" name="noty_notifications_enabled" id="noty_notifications_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['noty_notifications_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"><?php echo __("Cookie Consent");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Turn the cookie consent notification On and Off");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="cookie_consent_enabled">
                                    <input type="checkbox" name="cookie_consent_enabled" id="cookie_consent_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['cookie_consent_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"><?php echo __("Adblock Detector");?>
</div>
                                <div class="form-text d-none d-sm-block">
                                    <?php echo __("Turn the Adblock auto detector notification On and Off");?>
, <?php echo __("(Note: Admin is exception)");?>
<br>
                                    <?php echo __("Red block message will appear to make user disable adblock from his browser");?>
<br>
                                </div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="adblock_detector_enabled">
                                    <input type="checkbox" name="adblock_detector_enabled" id="adblock_detector_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['adblock_detector_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <!-- success -->
                        <div class="alert alert-success mb0 x-hidden"></div>
                        <!-- success -->

                        <!-- error -->
                        <div class="alert alert-danger mb0 x-hidden"></div>
                        <!-- error -->
                    </div>
                    <div class="card-footer text-right">
                        <button type="submit" class="btn btn-primary"><?php echo __("Save Changes");?>
</button>
                    </div>
                </form>
            </div>
            <!-- Features -->
        </div>
        <!-- tab-content -->

    <?php } elseif ($_smarty_tpl->tpl_vars['sub_view']->value == "posts") {?>

        <!-- card-header -->
        <div class="card-header with-icon">
            <!-- panel title -->
            <i class="fa fa-cog mr10"></i><?php echo __("Settings");?>
 &rsaquo; <?php echo __("Posts");?>

            <!-- panel title -->
        </div>
        <!-- card-header -->

        <!-- Posts -->
        <form class="js_ajax-forms " data-url="admin/settings.php?edit=posts">
            <div class="card-body">
                <div class="form-table-row">
                    <div>
                        <div class="form-control-label h6"><?php echo __("Stories");?>
</div>
                        <div class="form-text d-none d-sm-block">
                            <?php echo __("Turn the stories On and Off");?>
<br>
                            <?php echo __("Stories are photos and videos that only last 24 hours");?>

                        </div>
                    </div>
                    <div class="text-right">
                        <label class="switch" for="stories_enabled">
                            <input type="checkbox" name="stories_enabled" id="stories_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['stories_enabled']) {?>checked<?php }?>>
                            <span class="slider round"></span>
                        </label>
                    </div>
                </div>

                <div class="form-table-row">
                    <div>
                        <div class="form-control-label h6"><?php echo __("Wall Posts");?>
</div>
                        <div class="form-text d-none d-sm-block"><?php echo __("Users can publish posts on their friends walls");?>
</div>
                    </div>
                    <div class="text-right">
                        <label class="switch" for="wall_posts_enabled">
                            <input type="checkbox" name="wall_posts_enabled" id="wall_posts_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['wall_posts_enabled']) {?>checked<?php }?>>
                            <span class="slider round"></span>
                        </label>
                    </div>
                </div>

                <div class="form-table-row">
                    <div>
                        <div class="form-control-label h6"><?php echo __("Polls");?>
</div>
                        <div class="form-text d-none d-sm-block"><?php echo __("Turn the poll posts On and Off");?>
</div>
                    </div>
                    <div class="text-right">
                        <label class="switch" for="polls_enabled">
                            <input type="checkbox" name="polls_enabled" id="polls_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['polls_enabled']) {?>checked<?php }?>>
                            <span class="slider round"></span>
                        </label>
                    </div>
                </div>

                <div class="divider"></div>

                <div class="form-table-row">
                    <div>
                        <div class="form-control-label h6"><?php echo __("GIF");?>
</div>
                        <div class="form-text d-none d-sm-block"><?php echo __("Turn the gif posts On and Off");?>
</div>
                    </div>
                    <div class="text-right">
                        <label class="switch" for="gif_enabled">
                            <input type="checkbox" name="gif_enabled" id="gif_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['gif_enabled']) {?>checked<?php }?>>
                            <span class="slider round"></span>
                        </label>
                    </div>
                </div>

                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        <?php echo __("Giphy API Key");?>

                    </label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" name="giphy_key" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['giphy_key'];?>
">
                        <span class="form-text">
                            <?php echo __("Check the documentation to learn how to get this key");?>

                        </span>
                    </div>
                </div>

                <div class="divider"></div>

                <div class="form-table-row">
                    <div>
                        <div class="form-control-label h6"><?php echo __("Geolocation");?>
</div>
                        <div class="form-text d-none d-sm-block"><?php echo __("Turn the post Geolocation On and Off");?>
</div>
                    </div>
                    <div class="text-right">
                        <label class="switch" for="geolocation_enabled">
                            <input type="checkbox" name="geolocation_enabled" id="geolocation_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['geolocation_enabled']) {?>checked<?php }?>>
                            <span class="slider round"></span>
                        </label>
                    </div>
                </div>

                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        <?php echo __("Geolocation Google Key");?>

                    </label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" name="geolocation_key" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['geolocation_key'];?>
">
                        <span class="form-text">
                            <?php echo __("Check the documentation to learn how to get this key");?>

                        </span>
                    </div>
                </div>

                <div class="divider"></div>

                <div class="form-table-row">
                    <div>
                        <div class="form-control-label h6"><?php echo __("Post Translation");?>
</div>
                        <div class="form-text d-none d-sm-block"><?php echo __("Turn the post translation On and Off");?>
</div>
                    </div>
                    <div class="text-right">
                        <label class="switch" for="post_translation_enabled">
                            <input type="checkbox" name="post_translation_enabled" id="post_translation_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['post_translation_enabled']) {?>checked<?php }?>>
                            <span class="slider round"></span>
                        </label>
                    </div>
                </div>

                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        <?php echo __("Yandex Key");?>

                    </label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" name="yandex_key" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['yandex_key'];?>
">
                        <span class="form-text">
                            <?php echo __("Check the documentation to learn how to get this key");?>

                        </span>
                    </div>
                </div>

                <div class="divider"></div>

                <div class="form-table-row">
                    <div>
                        <div class="form-control-label h6"><?php echo __("Social Share");?>
</div>
                        <div class="form-text d-none d-sm-block"><?php echo __("Turn the social share for posts On and Off");?>
</div>
                    </div>
                    <div class="text-right">
                        <label class="switch" for="social_share_enabled">
                            <input type="checkbox" name="social_share_enabled" id="social_share_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['social_share_enabled']) {?>checked<?php }?>>
                            <span class="slider round"></span>
                        </label>
                    </div>
                </div>

                <div class="divider"></div>

                <div class="form-table-row">
                    <div>
                        <div class="form-control-label h6"><?php echo __("Smart YouTube Player");?>
</div>
                        <div class="form-text d-none d-sm-block"><?php echo __("Smart YouTube player will save a lot of bandwidth");?>
</div>
                    </div>
                    <div class="text-right">
                        <label class="switch" for="smart_yt_player">
                            <input type="checkbox" name="smart_yt_player" id="smart_yt_player" <?php if ($_smarty_tpl->tpl_vars['system']->value['smart_yt_player']) {?>checked<?php }?>>
                            <span class="slider round"></span>
                        </label>
                    </div>
                </div>

                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        <?php echo __("Default Privacy");?>

                    </label>
                    <div class="col-md-9">
                        <select class="form-control selectpicker" name="default_privacy">
                            <option value="public" <?php if ($_smarty_tpl->tpl_vars['system']->value['default_privacy'] == "public") {?>selected<?php }?> data-content="<div class='option'><div class='icon'><i class='fa fa-globe fa-lg fa-fw'></i></div><div class='text'><b><?php echo __("Public");?>
</b><br><?php echo __("Anyone one can see the post");?>
</div></div>"><?php echo __("Public");?>
</option>
                            <option value="friends" <?php if ($_smarty_tpl->tpl_vars['system']->value['default_privacy'] == "friends") {?>selected<?php }?> data-content="<div class='option'><div class='icon'><i class='fa fa-users fa-lg fa-fw'></i></div><div class='text'><b><?php echo __("Friends");?>
</b><br><?php echo __("Only post author friends can see the post");?>
</div></div>"><?php echo __("Friends");?>
</option>
                            <option value="me" <?php if ($_smarty_tpl->tpl_vars['system']->value['default_privacy'] == "me") {?>selected<?php }?> data-content="<div class='option'><div class='icon'><i class='fa fa-lock fa-lg fa-fw'></i></div><div class='text'><b><?php echo __("Only Me");?>
</b><br><?php echo __("Only post author can see the post");?>
</div></div>"><?php echo __("Only Me");?>
</option>
                        </select>
                    </div>
                </div>

                <!-- success -->
                <div class="alert alert-success mb0 x-hidden"></div>
                <!-- success -->

                <!-- error -->
                <div class="alert alert-danger mb0 x-hidden"></div>
                <!-- error -->
            </div>
            <div class="card-footer text-right">
                <button type="submit" class="btn btn-primary"><?php echo __("Save Changes");?>
</button>
            </div>
        </form>
        <!-- Posts -->

    <?php } elseif ($_smarty_tpl->tpl_vars['sub_view']->value == "registration") {?>

        <!-- card-header -->
        <div class="card-header with-icon with-nav">
            <!-- panel title -->
            <div class="mb20">
                <i class="fa fa-cog mr10"></i><?php echo __("Settings");?>
 &rsaquo; <?php echo __("Registration");?>

            </div>
            <!-- panel title -->

            <!-- panel nav -->
            <ul class="nav nav-tabs">
                <li class="nav-item">
                    <a class="nav-link active" href="#General" data-toggle="tab">
                        <i class="fa fa-sign-in-alt fa-fw mr5"></i><strong><?php echo __("General");?>
</strong>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#Social" data-toggle="tab">
                        <i class="fab fa-facebook fa-fw mr5"></i><strong><?php echo __("Social Login");?>
</strong>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#Invitation" data-toggle="tab">
                        <i class="far fa-handshake fa-fw mr5"></i><strong><?php echo __("Invitation Codes");?>
</strong>
                    </a>
                </li>
            </ul>
            <!-- panel nav -->
        </div>
        <!-- card-header -->

        <!-- tabs content -->
        <div class="tab-content">
            <!-- General -->
            <div class="tab-pane active" id="General">
                <form class="js_ajax-forms " data-url="admin/settings.php?edit=registration">
                    <div class="card-body">
                        <div class="alert alert-warning">
                            <div class="icon">
                                <i class="fa fa-exclamation-triangle fa-2x"></i>
                            </div>
                            <div class="text pt5">
                                <?php echo __("If Registration is Free and Pro Packages enabled they will be used as an optional upgrading plans");?>
.
                            </div>
                        </div>
                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"><?php echo __("Registration Enabled");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Allow users to create accounts");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="registration_enabled">
                                    <input type="checkbox" name="registration_enabled" id="registration_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['registration_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Registration Type");?>

                            </label>
                            <div class="col-md-9">
                                <div class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="registration_type" id="registration_free" value="free" class="custom-control-input" <?php if ($_smarty_tpl->tpl_vars['system']->value['registration_type'] == "free") {?>checked<?php }?>>
                                    <label class="custom-control-label" for="registration_free"><?php echo __("Free");?>
</label>
                                </div>
                                <div class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="registration_type" id="registration_paid" value="paid" class="custom-control-input" <?php if ($_smarty_tpl->tpl_vars['system']->value['registration_type'] == "paid") {?>checked<?php }?>>
                                    <label class="custom-control-label" for="registration_paid"><?php echo __("Subscriptions Only");?>
</label>
                                </div>
                                <span class="form-text">
                                    <?php echo __("Allow users to create accounts Free or via Subscriptions only");?>
<br>
                                    <?php echo __("Make sure you have configured");?>
 <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/admincp/packages"><?php echo __("Pro Packages");?>
</a>
                                </span>
                            </div>
                        </div>

                        <div class="divider"></div>

                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"><?php echo __("Invitation Enabled");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("This system is used to invite users if the registration is turned off");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="invitation_enabled">
                                    <input type="checkbox" name="invitation_enabled" id="invitation_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['invitation_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="divider"></div>

                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"><?php echo __("Pro Packages Enabled");?>
</div>
                                <div class="form-text d-none d-sm-block">
                                    <?php echo __("Enable pro packages to be used as upgrading plans or for subscriptions");?>
<br>
                                    <?php echo __("Make sure you have configured");?>
 <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/admincp/settings/payments"><?php echo __("Payments Settings");?>
</a>
                                </div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="packages_enabled">
                                    <input type="checkbox" name="packages_enabled" id="packages_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['packages_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="divider"></div>

                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"><?php echo __("Activation Enabled");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Enable account activation to send activation code to user's email/phone");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="activation_enabled">
                                    <input type="checkbox" name="activation_enabled" id="activation_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['activation_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Activation Via");?>

                            </label>
                            <div class="col-md-9">
                                <div class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="activation_type" id="activation_email" value="email" class="custom-control-input" <?php if ($_smarty_tpl->tpl_vars['system']->value['activation_type'] == "email") {?>checked<?php }?>>
                                    <label class="custom-control-label" for="activation_email"><?php echo __("Email");?>
</label>
                                </div>
                                <div class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="activation_type" id="activation_sms" value="sms" class="custom-control-input" <?php if ($_smarty_tpl->tpl_vars['system']->value['activation_type'] == "sms") {?>checked<?php }?>>
                                    <label class="custom-control-label" for="activation_sms"><?php echo __("SMS");?>
</label>
                                </div>
                                <span class="form-text">
                                    <?php echo __("Select Email or SMS activation to send activation code to user's email/phone");?>
<br>
                                    <?php echo __("Make sure you have configured");?>
 <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/admincp/settings/sms"><?php echo __("SMS Settings");?>
</a>
                                </span>
                            </div>
                        </div>

                        <div class="divider"></div>

                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"><?php echo __("Two-Factor Authentication");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Enable two-factor authentication to log in with a code from your email/phone as well as a password");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="two_factor_enabled">
                                    <input type="checkbox" name="two_factor_enabled" id="two_factor_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['two_factor_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-sm-3 form-control-label">
                                <?php echo __("Two-Factor Authentication Via");?>

                            </label>
                            <div class="col-md-9">
                                <div class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="two_factor_type" id="two_factor_email" value="email" class="custom-control-input" <?php if ($_smarty_tpl->tpl_vars['system']->value['two_factor_type'] == "email") {?>checked<?php }?>>
                                    <label class="custom-control-label" for="two_factor_email"><?php echo __("Email");?>
</label>
                                </div>
                                <div class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="two_factor_type" id="two_factor_sms" value="sms" class="custom-control-input" <?php if ($_smarty_tpl->tpl_vars['system']->value['two_factor_type'] == "sms") {?>checked<?php }?>>
                                    <label class="custom-control-label" for="two_factor_sms"><?php echo __("SMS");?>
</label>
                                </div>
                                <div class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="two_factor_type" id="two_factor_google" value="google" class="custom-control-input" <?php if ($_smarty_tpl->tpl_vars['system']->value['two_factor_type'] == "google") {?>checked<?php }?>>
                                    <label class="custom-control-label" for="two_factor_google"><?php echo __("Google Authenticator");?>
</label>
                                </div>
                                <span class="form-text">
                                    <?php echo __("Select Email, SMS or Google Authenticator to send log in code to user");?>
<br>
                                    <?php echo __("Make sure you have configured");?>
 <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/admincp/settings/sms"><?php echo __("SMS Settings");?>
</a>
                                </span>
                            </div>
                        </div>

                        <div class="divider"></div>

                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"><?php echo __("Verification Requests");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Turn the verification requests from users & pages On and Off");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="verification_requests">
                                    <input type="checkbox" name="verification_requests" id="verification_requests" <?php if ($_smarty_tpl->tpl_vars['system']->value['verification_requests']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="divider"></div>

                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"><?php echo __("Age Restriction");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Enable/Disable age restriction");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="age_restriction">
                                    <input type="checkbox" name="age_restriction" id="age_restriction" <?php if ($_smarty_tpl->tpl_vars['system']->value['age_restriction']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Minimum Age");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="minimum_age" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['minimum_age'];?>
">
                                <span class="form-text">
                                    <?php echo __("The minimum age required to register (in years)");?>

                                </span>
                            </div>
                        </div>

                        <div class="divider"></div>

                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"><?php echo __("Getting Started");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Enable/Disable getting started page after registration");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="getting_started">
                                    <input type="checkbox" name="getting_started" id="getting_started" <?php if ($_smarty_tpl->tpl_vars['system']->value['getting_started']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"><?php echo __("Delete Account");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Allow users to delete their account");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="delete_accounts_enabled">
                                    <input type="checkbox" name="delete_accounts_enabled" id="delete_accounts_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['delete_accounts_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Accounts/IP");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="max_accounts" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['max_accounts'];?>
">
                                <span class="form-text">
                                    <?php echo __("Number of accounts allowed to register per IP (0 for unlimited)");?>

                                </span>
                            </div>
                        </div>

                        <!-- success -->
                        <div class="alert alert-success mb0 x-hidden"></div>
                        <!-- success -->

                        <!-- error -->
                        <div class="alert alert-danger mb0 x-hidden"></div>
                        <!-- error -->
                    </div>
                    <div class="card-footer text-right">
                        <button type="submit" class="btn btn-primary"><?php echo __("Save Changes");?>
</button>
                    </div>
                </form>
            </div>
            <!-- General -->

            <!-- Social -->
            <div class="tab-pane" id="Social">
                <form class="js_ajax-forms " data-url="admin/settings.php?edit=social_login">
                    <div class="card-body">
                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"><?php echo __("Social Logins");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Turn registration/login via social media (Facebook, Twitter and etc) On and Off");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="social_login_enabled">
                                    <input type="checkbox" name="social_login_enabled" id="social_login_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['social_login_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="divider"></div>

                        <!-- facebook -->
                        <div class="form-table-row">
                            <div class="avatar">
                                <i class="fab fa-facebook-square fa-3x" style="color: #3B579D"></i>
                            </div>
                            <div>
                                <div class="form-control-label h6 mb5"><?php echo __("Facebook");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Turn registration/login via Facebook On and Off");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="facebook_login_enabled">
                                    <input type="checkbox" name="facebook_login_enabled" id="facebook_login_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['facebook_login_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Facebook App ID");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="facebook_appid" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['facebook_appid'];?>
">
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Facebook App Secret");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="facebook_secret" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['facebook_secret'];?>
">
                            </div>
                        </div>
                        <!-- facebook -->

                        <div class="divider"></div>

                        <!-- twitter -->
                        <div class="form-table-row">
                            <div class="avatar">
                                <i class="fab fa-twitter-square fa-3x" style="color: #55ACEE"></i>
                            </div>
                            <div>
                                <div class="form-control-label h6 mb5"><?php echo __("Twitter");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Turn registration/login via Twitter On and Off");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="twitter_login_enabled">
                                    <input type="checkbox" name="twitter_login_enabled" id="twitter_login_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['twitter_login_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Twitter App ID");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="twitter_appid" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['twitter_appid'];?>
">
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Twitter App Secret");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="twitter_secret" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['twitter_secret'];?>
">
                            </div>
                        </div>
                        <!-- twitter -->

                        <div class="divider"></div>

                        <!-- instagram -->
                        <div class="form-table-row">
                            <div class="avatar">
                                <i class="fab fa-instagram fa-3x" style="color: #3f729b"></i>
                            </div>
                            <div>
                                <div class="form-control-label h6 mb5"><?php echo __("Instagram");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Turn registration/login via Instagram On and Off");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="instagram_login_enabled">
                                    <input type="checkbox" name="instagram_login_enabled" id="instagram_login_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['instagram_login_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Instagram App ID");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="instagram_appid" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['instagram_appid'];?>
">
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Instagram App Secret");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="instagram_secret" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['instagram_secret'];?>
">
                            </div>
                        </div>
                        <!-- instagram -->

                        <div class="divider"></div>

                        <!-- linkedin -->
                        <div class="form-table-row">
                            <div class="avatar">
                                <i class="fab fa-linkedin fa-3x" style="color: #1A84BC"></i>
                            </div>
                            <div>
                                <div class="form-control-label h6 mb5"><?php echo __("Linkedin");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Turn registration/login via Linkedin On and Off");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="linkedin_login_enabled">
                                    <input type="checkbox" name="linkedin_login_enabled" id="linkedin_login_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['linkedin_login_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Linkedin App ID");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="linkedin_appid" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['linkedin_appid'];?>
">
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Linkedin App Secret");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="linkedin_secret" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['linkedin_secret'];?>
">
                            </div>
                        </div>
                        <!-- linkedin -->

                        <div class="divider"></div>

                        <!-- vk -->
                        <div class="form-table-row">
                            <div class="avatar">
                                <i class="fab fa-vk fa-3x" style="color: #527498"></i>
                            </div>
                            <div>
                                <div class="form-control-label h6 mb5"><?php echo __("Vkontakte");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Turn registration/login via Vkontakte On and Off");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="vkontakte_login_enabled">
                                    <input type="checkbox" name="vkontakte_login_enabled" id="vkontakte_login_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['vkontakte_login_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Vkontakte App ID");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="vkontakte_appid" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['vkontakte_appid'];?>
">
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Vkontakte App Secret");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="vkontakte_secret" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['vkontakte_secret'];?>
">
                            </div>
                        </div>
                        <!-- vk -->

                        <!-- success -->
                        <div class="alert alert-success mb0 x-hidden"></div>
                        <!-- success -->

                        <!-- error -->
                        <div class="alert alert-danger mb0 x-hidden"></div>
                        <!-- error -->
                    </div>
                    <div class="card-footer text-right">
                        <button type="submit" class="btn btn-primary"><?php echo __("Save Changes");?>
</button>
                    </div>
                </form>
            </div>
            <!-- Social -->

            <!-- Invitation -->
            <div class="tab-pane" id="Invitation">
                <div class="card-body">
                    <div class="alert alert-warning">
                        <div class="icon">
                            <i class="fa fa-exclamation-triangle fa-2x"></i>
                        </div>
                        <div class="text pt5">
                            <?php echo __("This system is used to invite users if the registration is turned off");?>
.
                        </div>
                    </div>

                    <div class="text-center">
                        <button data-toggle="modal" data-url="admin/invitations.php?do=generate" class="btn btn-md btn-success">
                            <i class="fa fa-handshake mr10"></i><?php echo __("Generate New Code");?>

                        </button>
                    </div>
                    <div class="divider"></div>
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover js_dataTable">
                            <thead>
                                <tr>
                                    <th><?php echo __("ID");?>
</th>
                                    <th><?php echo __("Invitation Code");?>
</th>
                                    <th><?php echo __("Valid");?>
</th>
                                    <th><?php echo __("Created");?>
</th>
                                    <th><?php echo __("Actions");?>
</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['rows']->value, 'row');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['row']->value) {
?>
                                    <tr>
                                        <td><?php echo $_smarty_tpl->tpl_vars['row']->value['code_id'];?>
</td>
                                        <td><span class="label label-default"><?php echo $_smarty_tpl->tpl_vars['row']->value['code'];?>
</span></td>
                                        <td>
                                            <?php if ($_smarty_tpl->tpl_vars['row']->value['valid']) {?>
                                                <span class="badge badge-pill badge-lg badge-success"><?php echo __("Yes");?>
</span>
                                            <?php } else { ?>
                                                <span class="badge badge-pill badge-lg badge-danger"><?php echo __("No");?>
</span>
                                            <?php }?>
                                        </td>
                                        <td><?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['row']->value['date'],"%e %B %Y");?>
</td>
                                        <td>
                                            <div class="d-inline-block" data-toggle="tooltip" data-placement="top" title='<?php echo __("Send to email");?>
'>
                                                <button data-toggle="modal" data-url="admin/invitations.php?do=prepare_email&code=<?php echo $_smarty_tpl->tpl_vars['row']->value['code'];?>
" class="btn btn-sm btn-icon btn-rounded btn-primary">
                                                    <i class="fa fa-envelope"></i>
                                                </button>
                                            </div>
                                            <button data-toggle="tooltip" data-placement="top" title='<?php echo __("Delete");?>
' class="btn btn-sm btn-icon btn-rounded btn-danger js_admin-deleter" data-handle="invitation_code" data-id="<?php echo $_smarty_tpl->tpl_vars['row']->value['code_id'];?>
">
                                                <i class="fa fa-trash-alt"></i>
                                            </button>
                                        </td>
                                    </tr>
                                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- Invitation -->
            </div>
        </div>
        <!-- tabs content -->

    <?php } elseif ($_smarty_tpl->tpl_vars['sub_view']->value == "emails") {?>

        <!-- card-header -->
        <div class="card-header with-icon with-nav">
            <!-- panel title -->
            <div class="mb20">
                <i class="fa fa-cog mr10"></i><?php echo __("Settings");?>
 &rsaquo; <?php echo __("Emails");?>

            </div>
            <!-- panel title -->

            <!-- panel nav -->
            <ul class="nav nav-tabs">
                <li class="nav-item">
                    <a class="nav-link active" href="#SMTP" data-toggle="tab">
                        <i class="fa fa-server fa-fw mr5"></i><strong><?php echo __("SMTP");?>
</strong>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#Notifications" data-toggle="tab">
                        <i class="fa fa-envelope-open fa-fw mr5"></i><strong><?php echo __("Email Notifications");?>
</strong>
                    </a>
                </li>
            </ul>
            <!-- panel nav -->
        </div>
        <!-- card-header -->

        <!-- tabs content -->
        <div class="tab-content">
            <!-- SMTP -->
            <div class="tab-pane active" id="SMTP">
                <form class="js_ajax-forms " data-url="admin/settings.php?edit=emails">
                    <div class="card-body">
                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"><?php echo __("SMTP Emails");?>
</div>
                                <div class="form-text d-none d-sm-block">
                                    <?php echo __("Enable/Disable SMTP email system");?>
<br/>
                                    <?php echo __("PHP mail() function will be used in case of disabled");?>

                                </div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="email_smtp_enabled">
                                    <input type="checkbox" name="email_smtp_enabled" id="email_smtp_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['email_smtp_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"><?php echo __("SMTP Require Authentication");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Enable/Disable SMTP authentication");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="email_smtp_authentication">
                                    <input type="checkbox" name="email_smtp_authentication" id="email_smtp_authentication" <?php if ($_smarty_tpl->tpl_vars['system']->value['email_smtp_authentication']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"><?php echo __("SMTP SSL Encryption");?>
</div>
                                <div class="form-text d-none d-sm-block">
                                    <?php echo __("Enable/Disable SMTP SSL encryption");?>
<br/>
                                    <?php echo __("TLS encryption will be used in case of disabled");?>

                                </div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="email_smtp_ssl">
                                    <input type="checkbox" name="email_smtp_ssl" id="email_smtp_ssl" <?php if ($_smarty_tpl->tpl_vars['system']->value['email_smtp_ssl']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("SMTP Server");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="email_smtp_server" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['email_smtp_server'];?>
">
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("SMTP Port");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="email_smtp_port" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['email_smtp_port'];?>
">
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("SMTP Username");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="email_smtp_username" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['email_smtp_username'];?>
">
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("SMTP Password");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="email_smtp_password" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['email_smtp_password'];?>
">
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Set From");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="email_smtp_setfrom" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['email_smtp_setfrom'];?>
">
                                <span class="form-text">
                                    <?php echo __("Set the From email address");?>
, <?php echo __("For example: email@domain.com");?>

                                </span>
                            </div>
                        </div>

                        <!-- success -->
                        <div class="alert alert-success mb0 x-hidden"></div>
                        <!-- success -->

                        <!-- error -->
                        <div class="alert alert-danger mb0 x-hidden"></div>
                        <!-- error -->
                    </div>
                    <div class="card-footer text-right">
                        <button type="button" class="btn btn-danger js_admin-tester" data-handle="smtp">
                            <i class="fa fa-bolt mr10"></i><?php echo __("Test Connection");?>

                        </button>
                        <button type="submit" class="btn btn-primary"><?php echo __("Save Changes");?>
</button>
                    </div>
                </form>
            </div>
            <!-- SMTP -->

            <!-- Notifications -->
            <div class="tab-pane" id="Notifications">
                <form class="js_ajax-forms " data-url="admin/settings.php?edit=email_notifications">
                    <div class="card-body">
                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"><?php echo __("Email Notifications");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Enable/Disable email notifications system");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="email_notifications">
                                    <input type="checkbox" name="email_notifications" id="email_notifications" <?php if ($_smarty_tpl->tpl_vars['system']->value['email_notifications']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Email User When");?>

                            </label>
                            <div class="col-md-9">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" name="email_post_likes" id="email_post_likes" <?php if ($_smarty_tpl->tpl_vars['system']->value['email_post_likes']) {?>checked<?php }?>>
                                    <label class="custom-control-label" for="email_post_likes"><?php echo __("Someone liked his post");?>
</label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" name="email_post_comments" id="email_post_comments" <?php if ($_smarty_tpl->tpl_vars['system']->value['email_post_comments']) {?>checked<?php }?>>
                                    <label class="custom-control-label" for="email_post_comments"><?php echo __("Someone commented on his post");?>
</label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" name="email_post_shares" id="email_post_shares" <?php if ($_smarty_tpl->tpl_vars['system']->value['email_post_shares']) {?>checked<?php }?>>
                                    <label class="custom-control-label" for="email_post_shares"><?php echo __("Someone shared his post");?>
</label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" name="email_wall_posts" id="email_wall_posts" <?php if ($_smarty_tpl->tpl_vars['system']->value['email_wall_posts']) {?>checked<?php }?>>
                                    <label class="custom-control-label" for="email_wall_posts"><?php echo __("Someone posted on his timeline");?>
</label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" name="email_mentions" id="email_mentions" <?php if ($_smarty_tpl->tpl_vars['system']->value['email_mentions']) {?>checked<?php }?>>
                                    <label class="custom-control-label" for="email_mentions"><?php echo __("Someone mentioned him");?>
</label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" name="email_profile_visits" id="email_profile_visits" <?php if ($_smarty_tpl->tpl_vars['system']->value['email_profile_visits']) {?>checked<?php }?>>
                                    <label class="custom-control-label" for="email_profile_visits"><?php echo __("Someone visited his profile");?>
</label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" name="email_friend_requests" id="email_friend_requests" <?php if ($_smarty_tpl->tpl_vars['system']->value['email_friend_requests']) {?>checked<?php }?>>
                                    <label class="custom-control-label" for="email_friend_requests"><?php echo __("Someone sent him or accepted his friend requset");?>
</label>
                                </div>
                            </div>
                        </div>

                        <!-- success -->
                        <div class="alert alert-success mb0 x-hidden"></div>
                        <!-- success -->

                        <!-- error -->
                        <div class="alert alert-danger mb0 x-hidden"></div>
                        <!-- error -->
                    </div>
                    <div class="card-footer text-right">
                        <button type="submit" class="btn btn-primary"><?php echo __("Save Changes");?>
</button>
                    </div>
                </form>
            </div>
            <!-- Notifications -->
        </div>
        <!-- tabs content -->

    <?php } elseif ($_smarty_tpl->tpl_vars['sub_view']->value == "sms") {?>

        <!-- card-header -->
        <div class="card-header with-icon">
            <!-- panel title -->
            <i class="fa fa-cog mr10"></i><?php echo __("Settings");?>
 &rsaquo; <?php echo __("SMS");?>

            <!-- panel title -->
        </div>
        <!-- card-header -->

        <!-- SMS -->
        <form class="js_ajax-forms " data-url="admin/settings.php?edit=sms">
            <div class="card-body">
                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        <?php echo __("Twilio Account SID");?>

                    </label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" name="twilio_sid" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['twilio_sid'];?>
">
                    </div>
                </div>

                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        <?php echo __("Twilio AUTH TOKEN");?>

                    </label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" name="twilio_token" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['twilio_token'];?>
">
                    </div>
                </div>

                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        <?php echo __("Twilio Phone Number");?>

                    </label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" name="twilio_phone" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['twilio_phone'];?>
">
                    </div>
                </div>

                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        <?php echo __("Test Phone Number");?>

                    </label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" name="system_phone" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_phone'];?>
">
                        <span class="form-text">
                            <?php echo __("Your phone number to test the SMS service i.e +12344567890");?>
<br/>
                            <?php echo __("A test SMS will be sent to this phone number when you test the connection");?>

                        </span>
                    </div>
                </div>

                <!-- success -->
                <div class="alert alert-success mb0 x-hidden"></div>
                <!-- success -->

                <!-- error -->
                <div class="alert alert-danger mb0 x-hidden"></div>
                <!-- error -->
            </div>
            <div class="card-footer text-right">
                <button type="button" class="btn btn-danger js_admin-tester" data-handle="sms">
                    <i class="fa fa-bolt mr10"></i><?php echo __("Test Connection");?>

                </button>
                <button type="submit" class="btn btn-primary"><?php echo __("Save Changes");?>
</button>
            </div>
        </form>
        <!-- SMS -->

    <?php } elseif ($_smarty_tpl->tpl_vars['sub_view']->value == "chat") {?>

        <!-- card-header -->
        <div class="card-header with-icon">
            <!-- panel title -->
            <i class="fa fa-cog mr10"></i><?php echo __("Settings");?>
 &rsaquo; <?php echo __("Chat");?>

            <!-- panel title -->
        </div>
        <!-- card-header -->

        <!-- Chat -->
        <form class="js_ajax-forms " data-url="admin/settings.php?edit=chat">
            <div class="card-body">
                <div class="form-table-row">
                    <div>
                        <div class="form-control-label h6"><?php echo __("Chat Enabled");?>
</div>
                        <div class="form-text d-none d-sm-block"><?php echo __("Turn the chat system On and Off");?>
</div>
                    </div>
                    <div class="text-right">
                        <label class="switch" for="chat_enabled">
                            <input type="checkbox" name="chat_enabled" id="chat_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['chat_enabled']) {?>checked<?php }?>>
                            <span class="slider round"></span>
                        </label>
                    </div>
                </div>

                <div class="form-table-row">
                    <div>
                        <div class="form-control-label h6"><?php echo __("User Status Enabled");?>
</div>
                        <div class="form-text d-none d-sm-block"><?php echo __("Turn the Last Seen On and Off");?>
</div>
                    </div>
                    <div class="text-right">
                        <label class="switch" for="chat_status_enabled">
                            <input type="checkbox" name="chat_status_enabled" id="chat_status_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['chat_status_enabled']) {?>checked<?php }?>>
                            <span class="slider round"></span>
                        </label>
                    </div>
                </div>

                <!-- success -->
                <div class="alert alert-success mb0 x-hidden"></div>
                <!-- success -->

                <!-- error -->
                <div class="alert alert-danger mb0 x-hidden"></div>
                <!-- error -->
            </div>
            <div class="card-footer text-right">
                <button type="submit" class="btn btn-primary"><?php echo __("Save Changes");?>
</button>
            </div>
        </form>
        <!-- Chat -->

    <?php } elseif ($_smarty_tpl->tpl_vars['sub_view']->value == "uploads") {?>

        <!-- card-header -->
        <div class="card-header with-icon with-nav">
            <!-- panel title -->
            <div class="mb20">
                <i class="fa fa-cog mr10"></i><?php echo __("Settings");?>
 &rsaquo; <?php echo __("Uploads");?>

            </div>
            <!-- panel title -->

            <!-- panel nav -->
            <ul class="nav nav-tabs">
                <li class="nav-item">
                    <a class="nav-link active" href="#General" data-toggle="tab">
                        <i class="fa fa-upload fa-fw mr5"></i><strong class="pr5"><?php echo __("General");?>
</strong>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#S3" data-toggle="tab">
                        <i class="fab fa-amazon fa-fw mr5"></i><strong class="pr5"><?php echo __("Amazon S3");?>
</strong>
                    </a>
                </li>
            </ul>
            <!-- panel nav -->
        </div>
        <!-- card-header -->

        <!-- tabs content -->
        <div class="tab-content">
            <!-- General -->
            <div class="tab-pane active" id="General">
                <form class="js_ajax-forms " data-url="admin/settings.php?edit=uploads">
                    <div class="card-body">
                        <div class="alert alert-warning">
                            <div class="icon">
                                <i class="fa fa-exclamation-triangle fa-2x"></i>
                            </div>
                            <div class="text">
                                <?php echo __("Your server max upload size");?>
 = <?php echo $_smarty_tpl->tpl_vars['max_upload_size']->value;?>
<br>
                                <?php echo __("You can't upload files larger than");?>
 <?php echo $_smarty_tpl->tpl_vars['max_upload_size']->value;?>
 - <?php echo __("To upload larger files, contact your hosting provider");?>

                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Uploads Directory");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="uploads_directory" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['uploads_directory'];?>
">
                                <span class="form-text">
                                    <?php echo __("The path of uploads local directory");?>

                                </span>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Uploads Prefix");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="uploads_prefix" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['uploads_prefix'];?>
">
                                <span class="form-text">
                                    <?php echo __("Add a prefix to the uploaded files");?>

                                </span>
                            </div>
                        </div>

                        <div class="divider"></div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Max Profile Photo Size");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="max_avatar_size" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['max_avatar_size'];?>
">
                                <span class="form-text">
                                    <?php echo __("The Maximum size of profile photo");?>
 <?php echo __("in kilobytes (1 M = 1024 KB)");?>

                                </span>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Max Cover Photo Size");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="max_cover_size" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['max_cover_size'];?>
">
                                <span class="form-text">
                                    <?php echo __("The Maximum size of cover photo");?>
 <?php echo __("in kilobytes (1 M = 1024 KB)");?>

                                </span>
                            </div>
                        </div>

                        <div class="divider"></div>

                        <div class="form-table-row">
                            <div class="avatar">
                                <i class="fa fa-file-image fa-3x"></i>
                            </div>
                            <div>
                                <div class="form-control-label h6 mb5"><?php echo __("Photo Upload");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Enable photo upload to share & upload photos to the site");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="photos_enabled">
                                    <input type="checkbox" name="photos_enabled" id="photos_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['photos_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Max Photo Size");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="max_photo_size" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['max_photo_size'];?>
">
                                <span class="form-text">
                                    <?php echo __("The Maximum size of uploaded photo in posts");?>
 <?php echo __("in kilobytes (1M = 1024KB)");?>

                                </span>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Photo Quality");?>

                            </label>
                            <div class="col-md-9">
                                <select class="form-control selectpicker" name="uploads_quality">
                                    <option value="high" <?php if ($_smarty_tpl->tpl_vars['system']->value['uploads_quality'] == "high") {?>selected<?php }?> data-content="<div class='option'><div class='icon'><i class='fa fa-battery-full fa-lg fa-fw'></i></div><div class='text'><b><?php echo __('High Quality');?>
</b><br><?php echo __('High quality photos with low compression');?>
</div></div>"><?php echo __("High Quality");?>
</option>
                                    <option value="medium" <?php if ($_smarty_tpl->tpl_vars['system']->value['uploads_quality'] == "medium") {?>selected<?php }?> data-content="<div class='option'><div class='icon'><i class='fa fa-battery-half fa-lg fa-fw'></i></div><div class='text'><b><?php echo __('Medium Quality');?>
</b><br><?php echo __('Medium quality photos with medium compression');?>
</div></div>"><?php echo __("Medium Quality");?>
</option>
                                    <option value="low" <?php if ($_smarty_tpl->tpl_vars['system']->value['uploads_quality'] == "low") {?>selected<?php }?> data-content="<div class='option'><div class='icon'><i class='fa fa-battery-empty fa-lg fa-fw'></i></div><div class='text'><b><?php echo __('Low Quality');?>
</b><br><?php echo __('Low quality photos with high compression');?>
</div></div>"><?php echo __("Low Quality");?>
</option>
                                </select>
                            </div>
                        </div>

                        <div class="divider"></div>

                        <div class="form-table-row">
                            <div class="avatar">
                                <i class="fa fa-video fa-3x"></i>
                            </div>
                            <div>
                                <div class="form-control-label h6 mb5"><?php echo __("Video Upload");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Enable video upload to share & upload videos to the site");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="videos_enabled">
                                    <input type="checkbox" name="videos_enabled" id="videos_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['videos_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Max video size");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="max_video_size" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['max_video_size'];?>
">
                                <span class="form-text">
                                    <?php echo __("The Maximum size of uploaded video in posts");?>
 <?php echo __("in kilobytes (1M = 1024KB)");?>

                                </span>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Video extensions");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="video_extensions" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['video_extensions'];?>
">
                                <span class="form-text">
                                    <?php echo __("Allowed video extensions (separated with comma ',)");?>

                                </span>
                            </div>
                        </div>

                        <div class="divider"></div>

                        <div class="form-table-row">
                            <div class="avatar">
                                <i class="fa fa-music fa-3x"></i>
                            </div>
                            <div>
                                <div class="form-control-label h6 mb5"><?php echo __("Audio Upload");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Enable audio upload to share & upload sounds to the site");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="audio_enabled">
                                    <input type="checkbox" name="audio_enabled" id="audio_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['audio_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Max audio size");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="max_audio_size" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['max_audio_size'];?>
">
                                <span class="form-text">
                                    <?php echo __("The Maximum size of uploaded audio in posts");?>
 <?php echo __("in kilobytes (1M = 1024KB)");?>

                                </span>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Audio extensions");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="audio_extensions" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['audio_extensions'];?>
">
                                <span class="form-text">
                                    <?php echo __("Allowed audio extensions (separated with comma ',)");?>

                                </span>
                            </div>
                        </div>

                        <div class="divider"></div>

                        <div class="form-table-row">
                            <div class="avatar">
                                <i class="fa fa-file-alt fa-3x"></i>
                            </div>
                            <div>
                                <div class="form-control-label h6 mb5"><?php echo __("File Upload");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Enable file upload to share & upload files to the site");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="file_enabled">
                                    <input type="checkbox" name="file_enabled" id="file_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['file_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Max file size");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="max_file_size" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['max_file_size'];?>
">
                                <span class="form-text">
                                    <?php echo __("The Maximum size of uploaded file in posts");?>
 <?php echo __("in kilobytes (1M = 1024KB)");?>

                                </span>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("File extensions");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="file_extensions" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['file_extensions'];?>
">
                                <span class="form-text">
                                    <?php echo __("Allowed file extensions (separated with comma ',)");?>

                                </span>
                            </div>
                        </div>

                        <!-- success -->
                        <div class="alert alert-success mb0 x-hidden"></div>
                        <!-- success -->

                        <!-- error -->
                        <div class="alert alert-danger mb0 x-hidden"></div>
                        <!-- error -->
                    </div>
                    <div class="card-footer text-right">
                        <button type="submit" class="btn btn-primary"><?php echo __("Save Changes");?>
</button>
                    </div>
                </form>
            </div>
            <!-- General -->

            <!-- S3 -->
            <div class="tab-pane" id="S3">
                <form class="js_ajax-forms " data-url="admin/settings.php?edit=s3">
                    <div class="card-body">
                        <div class="alert alert-warning">
                            <div class="icon">
                                <i class="fab fa-amazon fa-2x"></i>
                            </div>
                            <div class="text">
                                <strong><?php echo __("Amazon S3 Storage");?>
</strong><br>
                                <?php echo __("Before enabling Amazon S3, make sure you upload the whole 'uploads' folder to your bucket");?>
.<br>
                                <?php echo __("Before disabling Amazon S3, make sure you download the whole 'uploads' folder to your server");?>
.
                            </div>
                        </div>

                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"><?php echo __("Amazon S3 Storage");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Enable Amazon S3 storage");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="s3_enabled">
                                    <input type="checkbox" name="s3_enabled" id="s3_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['s3_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Bucket Name");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="s3_bucket" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['s3_bucket'];?>
">
                                <span class="form-text">
                                    <?php echo __("Your Amazon S3 bucket name");?>

                                </span>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Bucket Region");?>

                            </label>
                            <div class="col-md-9">
                                <select name="s3_region" class="form-control">
                                    <option value="us-east-2" <?php if ($_smarty_tpl->tpl_vars['system']->value['s3_region'] == "us-east-2") {?>selected<?php }?>>US East (Ohio)</option>
                                    <option value="us-east-1" <?php if ($_smarty_tpl->tpl_vars['system']->value['s3_region'] == "us-east-1") {?>selected<?php }?>>US East (N. Virginia)</option>
                                    <option value="us-west-1" <?php if ($_smarty_tpl->tpl_vars['system']->value['s3_region'] == "us-west-1") {?>selected<?php }?>>US West (N. California)</option>
                                    <option value="us-west-2" <?php if ($_smarty_tpl->tpl_vars['system']->value['s3_region'] == "us-west-2") {?>selected<?php }?>>US West (Oregon)</option>
                                    <option value="ap-south-1" <?php if ($_smarty_tpl->tpl_vars['system']->value['s3_region'] == "ap-south-1") {?>selected<?php }?>>Asia Pacific (Mumbai)</option>
                                    <option value="ap-northeast-3" <?php if ($_smarty_tpl->tpl_vars['system']->value['s3_region'] == "ap-northeast-3") {?>selected<?php }?>>Asia Pacific (Osaka-Local)</option>
                                    <option value="ap-northeast-2" <?php if ($_smarty_tpl->tpl_vars['system']->value['s3_region'] == "ap-northeast-2") {?>selected<?php }?>>Asia Pacific (Seoul)</option>
                                    <option value="ap-southeast-1" <?php if ($_smarty_tpl->tpl_vars['system']->value['s3_region'] == "ap-southeast-1") {?>selected<?php }?>>Asia Pacific (Singapore)</option>
                                    <option value="ap-southeast-2" <?php if ($_smarty_tpl->tpl_vars['system']->value['s3_region'] == "ap-southeast-2") {?>selected<?php }?>>Asia Pacific (Sydney)</option>
                                    <option value="ap-northeast-1" <?php if ($_smarty_tpl->tpl_vars['system']->value['s3_region'] == "ap-northeast-1") {?>selected<?php }?>>Asia Pacific (Tokyo)</option>
                                    <option value="ca-central-1" <?php if ($_smarty_tpl->tpl_vars['system']->value['s3_region'] == "ca-central-1") {?>selected<?php }?>>Canada (Central)</option>
                                    <option value="cn-north-1" <?php if ($_smarty_tpl->tpl_vars['system']->value['s3_region'] == "cn-north-1") {?>selected<?php }?>>China (Beijing)</option>
                                    <option value="cn-northwest-1" <?php if ($_smarty_tpl->tpl_vars['system']->value['s3_region'] == "cn-northwest-1") {?>selected<?php }?>>China (Ningxia)</option>
                                    <option value="eu-central-1" <?php if ($_smarty_tpl->tpl_vars['system']->value['s3_region'] == "eu-central-1") {?>selected<?php }?>>EU (Frankfurt)</option>
                                    <option value="eu-west-1" <?php if ($_smarty_tpl->tpl_vars['system']->value['s3_region'] == "eu-west-1") {?>selected<?php }?>>EU (Ireland)</option>
                                    <option value="eu-west-2" <?php if ($_smarty_tpl->tpl_vars['system']->value['s3_region'] == "eu-west-2") {?>selected<?php }?>>EU (London)</option>
                                    <option value="eu-west-3" <?php if ($_smarty_tpl->tpl_vars['system']->value['s3_region'] == "eu-west-3") {?>selected<?php }?>>EU (Paris)</option>
                                    <option value="sa-east-1" <?php if ($_smarty_tpl->tpl_vars['system']->value['s3_region'] == "sa-east-1") {?>selected<?php }?>>South America (São Paulo)</option>
                                </select>
                                <span class="form-text">
                                    <?php echo __("Your Amazon S3 bucket region");?>

                                </span>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Access Key ID");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="s3_key" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['s3_key'];?>
">
                                <span class="form-text">
                                    <?php echo __("Your Amazon S3 Access Key ID");?>

                                </span>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Access Key Secret");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="s3_secret" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['s3_secret'];?>
">
                                <span class="form-text">
                                    <?php echo __("Your Amazon S3 Access Key Secret");?>

                                </span>
                            </div>
                        </div>

                        <!-- success -->
                        <div class="alert alert-success mb0 x-hidden"></div>
                        <!-- success -->

                        <!-- error -->
                        <div class="alert alert-danger mb0 x-hidden"></div>
                        <!-- error -->
                    </div>
                    <div class="card-footer text-right">
                        <button type="button" class="btn btn-danger js_admin-tester" data-handle="s3">
                            <i class="fa fa-bolt mr10"></i> <?php echo __("Test Connection");?>

                        </button>
                        <button type="submit" class="btn btn-primary"><?php echo __("Save Changes");?>
</button>
                    </div>
                </form>
            </div>
            <!-- S3 -->
        </div>
        <!-- tabs content -->

    <?php } elseif ($_smarty_tpl->tpl_vars['sub_view']->value == "security") {?>

        <!-- card-header -->
        <div class="card-header with-icon">
            <!-- panel title -->
            <i class="fa fa-cog mr10"></i><?php echo __("Settings");?>
 &rsaquo; <?php echo __("Security");?>

            <!-- panel title -->
        </div>
        <!-- card-header -->

        <!-- Security -->
        <form class="js_ajax-forms " data-url="admin/settings.php?edit=security">
            <div class="card-body">
                <div class="form-table-row">
                    <div>
                        <div class="form-control-label h6"><?php echo __("Censored Words Enabled");?>
</div>
                        <div class="form-text d-none d-sm-block"><?php echo __("Enable/Disable Words to be censored");?>
</div>
                    </div>
                    <div class="text-right">
                        <label class="switch" for="censored_words_enabled">
                            <input type="checkbox" name="censored_words_enabled" id="censored_words_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['censored_words_enabled']) {?>checked<?php }?>>
                            <span class="slider round"></span>
                        </label>
                    </div>
                </div>

                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        <?php echo __("Censored Words");?>

                    </label>
                    <div class="col-md-9">
                        <textarea class="form-control" name="censored_words" rows="3"><?php echo $_smarty_tpl->tpl_vars['system']->value['censored_words'];?>
</textarea>
                        <span class="form-text">
                            <?php echo __("Words to be censored, separated by a comma (,)");?>

                        </span>
                    </div>
                </div>

                <div class="divider"></div>

                <div class="form-table-row">
                    <div>
                        <div class="form-control-label h6"><?php echo __("reCAPTCHA Enabled");?>
</div>
                        <div class="form-text d-none d-sm-block"><?php echo __("Turn reCAPTCHA On and Off");?>
</div>
                    </div>
                    <div class="text-right">
                        <label class="switch" for="reCAPTCHA_enabled">
                            <input type="checkbox" name="reCAPTCHA_enabled" id="reCAPTCHA_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['reCAPTCHA_enabled']) {?>checked<?php }?>>
                            <span class="slider round"></span>
                        </label>
                    </div>
                </div>

                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        <?php echo __("reCAPTCHA Site Key");?>

                    </label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" name="reCAPTCHA_site_key" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['reCAPTCHA_site_key'];?>
">
                    </div>
                </div>

                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        <?php echo __("reCAPTCHA Secret Key");?>

                    </label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" name="reCAPTCHA_secret_key" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['reCAPTCHA_secret_key'];?>
">
                    </div>
                </div>

                <!-- success -->
                <div class="alert alert-success mb0 x-hidden"></div>
                <!-- success -->

                <!-- error -->
                <div class="alert alert-danger mb0 x-hidden"></div>
                <!-- error -->
            </div>
            <div class="card-footer text-right">
                <button type="submit" class="btn btn-primary"><?php echo __("Save Changes");?>
</button>
            </div>
        </form>
        <!-- Security -->

    <?php } elseif ($_smarty_tpl->tpl_vars['sub_view']->value == "payments") {?>

        <!-- card-header -->
        <div class="card-header with-icon with-nav">
            <!-- panel title -->
            <div class="mb20">
                <i class="fa fa-cog mr10"></i><?php echo __("Settings");?>
 &rsaquo; <?php echo __("Payments");?>

            </div>
            <!-- panel title -->

            <!-- panel nav -->
            <ul class="nav nav-tabs">
                <li class="nav-item">
                    <a class="nav-link active" href="#Paypal" data-toggle="tab">
                        <i class="fab fa-paypal fa-fw mr5"></i><strong class="pr5"><?php echo __("Paypal");?>
</strong>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#Stripe" data-toggle="tab">
                        <i class="fa fa-credit-card fa-fw mr5"></i><strong class="pr5"><?php echo __("Stripe");?>
</strong>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#Currency" data-toggle="tab">
                        <i class="fa fa-dollar-sign fa-fw mr5"></i><strong class="pr5"><?php echo __("Currency");?>
</strong>
                    </a>
                </li>
            </ul>
            <!-- panel nav -->
        </div>
        <!-- card-header -->

        <!-- tabs content -->
        <div class="tab-content">
            <!-- Paypal -->
            <div class="tab-pane active" id="Paypal">
                <form class="js_ajax-forms " data-url="admin/settings.php?edit=paypal">
                    <div class="card-body">
                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"><?php echo __("Paypal Enabled");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Enable payments via Paypal");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="paypal_enabled">
                                    <input type="checkbox" name="paypal_enabled" id="paypal_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['paypal_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Paypal Mode");?>

                            </label>
                            <div class="col-md-9">
                                <div class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="paypal_mode" id="paypal_live" value="live" class="custom-control-input" <?php if ($_smarty_tpl->tpl_vars['system']->value['paypal_mode'] == "live") {?>checked<?php }?>>
                                    <label class="custom-control-label" for="paypal_live"><?php echo __("Live");?>
</label>
                                </div>
                                <div class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="paypal_mode" id="paypal_sandbox" value="sandbox" class="custom-control-input" <?php if ($_smarty_tpl->tpl_vars['system']->value['paypal_mode'] == "sandbox") {?>checked<?php }?>>
                                    <label class="custom-control-label" for="paypal_sandbox"><?php echo __("Sandbox");?>
</label>
                                </div>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("PayPal Client ID");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="paypal_id" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['paypal_id'];?>
">
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("PayPal Secret Key");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="paypal_secret" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['paypal_secret'];?>
">
                            </div>
                        </div>

                        <!-- success -->
                        <div class="alert alert-success mb0 x-hidden"></div>
                        <!-- success -->

                        <!-- error -->
                        <div class="alert alert-danger mb0 x-hidden"></div>
                        <!-- error -->
                    </div>
                    <div class="card-footer text-right">
                        <button type="submit" class="btn btn-primary"><?php echo __("Save Changes");?>
</button>
                    </div>
                </form>
            </div>
            <!-- Paypal -->

            <!-- Stripe -->
            <div class="tab-pane" id="Stripe">
                <form class="js_ajax-forms " data-url="admin/settings.php?edit=stripe">
                    <div class="card-body">
                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"><?php echo __("Credit Card Enabled");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Enable payments via Credit Card");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="creditcard_enabled">
                                    <input type="checkbox" name="creditcard_enabled" id="creditcard_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['creditcard_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-table-row">
                            <div>
                                <div class="form-control-label h6"><?php echo __("Alipay Enabled");?>
</div>
                                <div class="form-text d-none d-sm-block"><?php echo __("Enable payments via Alipay");?>
</div>
                            </div>
                            <div class="text-right">
                                <label class="switch" for="alipay_enabled">
                                    <input type="checkbox" name="alipay_enabled" id="alipay_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['alipay_enabled']) {?>checked<?php }?>>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Stripe Mode");?>

                            </label>
                            <div class="col-md-9">
                                <div class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="stripe_mode" id="stripe_live" value="live" class="custom-control-input" <?php if ($_smarty_tpl->tpl_vars['system']->value['stripe_mode'] == "live") {?>checked<?php }?>>
                                    <label class="custom-control-label" for="stripe_live"><?php echo __("Live");?>
</label>
                                </div>
                                <div class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="stripe_mode" id="stripe_test" value="test" class="custom-control-input" <?php if ($_smarty_tpl->tpl_vars['system']->value['stripe_mode'] == "test") {?>checked<?php }?>>
                                    <label class="custom-control-label" for="stripe_test"><?php echo __("Test");?>
</label>
                                </div>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Test Secret Key");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="stripe_test_secret" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['stripe_test_secret'];?>
">
                                <span class="form-text">
                                    <?php echo __("Stripe secret key that starts with sk_");?>

                                </span>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Test Publishable Key");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="stripe_test_publishable" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['stripe_test_publishable'];?>
">
                                <span class="form-text">
                                    <?php echo __("Stripe publishable key that starts with pk_");?>

                                </span>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Live Secret Key");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="stripe_live_secret" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['stripe_live_secret'];?>
">
                                <span class="form-text">
                                    <?php echo __("Stripe secret key that starts with sk_");?>

                                </span>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Live Publishable Key");?>

                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="stripe_live_publishable" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['stripe_live_publishable'];?>
">
                                <span class="form-text">
                                    <?php echo __("Stripe publishable key that starts with pk_");?>

                                </span>
                            </div>
                        </div>

                        <!-- success -->
                        <div class="alert alert-success mb0 x-hidden"></div>
                        <!-- success -->

                        <!-- error -->
                        <div class="alert alert-danger mb0 x-hidden"></div>
                        <!-- error -->
                    </div>
                    <div class="card-footer text-right">
                        <button type="submit" class="btn btn-primary"><?php echo __("Save Changes");?>
</button>
                    </div>
                </form>
            </div>
            <!-- Stripe -->

            <!-- Currency -->
            <div class="tab-pane" id="Currency">
                <form class="js_ajax-forms " data-url="admin/settings.php?edit=currency">
                    <div class="card-body">
                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Currency");?>

                            </label>
                            <div class="col-md-9">
                                <select class="form-control" name="system_currency">
                                    <option <?php if ($_smarty_tpl->tpl_vars['system']->value['system_currency'] == "AUD") {?>selected<?php }?> value="AUD">Australian Dollar</option>
                                    <option <?php if ($_smarty_tpl->tpl_vars['system']->value['system_currency'] == "BRL") {?>selected<?php }?> value="BRL">Brazilian Real</option>
                                    <option <?php if ($_smarty_tpl->tpl_vars['system']->value['system_currency'] == "CAD") {?>selected<?php }?> value="CAD">Canadian Dollar</option>
                                    <option <?php if ($_smarty_tpl->tpl_vars['system']->value['system_currency'] == "CZK") {?>selected<?php }?> value="CZK">Czech Koruna</option>
                                    <option <?php if ($_smarty_tpl->tpl_vars['system']->value['system_currency'] == "DKK") {?>selected<?php }?> value="DKK">Danish Krone</option>
                                    <option <?php if ($_smarty_tpl->tpl_vars['system']->value['system_currency'] == "EUR") {?>selected<?php }?> value="EUR">Euro</option>
                                    <option <?php if ($_smarty_tpl->tpl_vars['system']->value['system_currency'] == "HKD") {?>selected<?php }?> value="HKD">Hong Kong Dollar</option>
                                    <option <?php if ($_smarty_tpl->tpl_vars['system']->value['system_currency'] == "HUF") {?>selected<?php }?> value="HUF">Hungarian Forint</option>
                                    <option <?php if ($_smarty_tpl->tpl_vars['system']->value['system_currency'] == "ILS") {?>selected<?php }?> value="ILS">Israeli New Sheqel</option>
                                    <option <?php if ($_smarty_tpl->tpl_vars['system']->value['system_currency'] == "JPY") {?>selected<?php }?> value="JPY">Japanese Yen</option>
                                    <option <?php if ($_smarty_tpl->tpl_vars['system']->value['system_currency'] == "MYR") {?>selected<?php }?> value="MYR">Malaysian Ringgit</option>
                                    <option <?php if ($_smarty_tpl->tpl_vars['system']->value['system_currency'] == "MXN") {?>selected<?php }?> value="MXN">Mexican Peso</option>
                                    <option <?php if ($_smarty_tpl->tpl_vars['system']->value['system_currency'] == "NOK") {?>selected<?php }?> value="NOK">Norwegian Krone</option>
                                    <option <?php if ($_smarty_tpl->tpl_vars['system']->value['system_currency'] == "NZD") {?>selected<?php }?> value="NZD">New Zealand Dollar</option>
                                    <option <?php if ($_smarty_tpl->tpl_vars['system']->value['system_currency'] == "PHP") {?>selected<?php }?> value="PHP">Philippine Peso</option>
                                    <option <?php if ($_smarty_tpl->tpl_vars['system']->value['system_currency'] == "PLN") {?>selected<?php }?> value="PLN">Polish Zloty</option>
                                    <option <?php if ($_smarty_tpl->tpl_vars['system']->value['system_currency'] == "GBP") {?>selected<?php }?> value="GBP">Pound Sterling</option>
                                    <option <?php if ($_smarty_tpl->tpl_vars['system']->value['system_currency'] == "RUB") {?>selected<?php }?> value="RUB">Russian Ruble</option>
                                    <option <?php if ($_smarty_tpl->tpl_vars['system']->value['system_currency'] == "SGD") {?>selected<?php }?> value="SGD">Singapore Dollar</option>
                                    <option <?php if ($_smarty_tpl->tpl_vars['system']->value['system_currency'] == "SEK") {?>selected<?php }?> value="SEK">Swedish Krona</option>
                                    <option <?php if ($_smarty_tpl->tpl_vars['system']->value['system_currency'] == "CHF") {?>selected<?php }?> value="CHF">Swiss Franc</option>
                                    <option <?php if ($_smarty_tpl->tpl_vars['system']->value['system_currency'] == "THB") {?>selected<?php }?> value="THB">Thai Baht</option>
                                    <option <?php if ($_smarty_tpl->tpl_vars['system']->value['system_currency'] == "TRY") {?>selected<?php }?> value="TRY">Turkish Lira</option>
                                    <option <?php if ($_smarty_tpl->tpl_vars['system']->value['system_currency'] == "USD") {?>selected<?php }?> value="USD">U.S. Dollar</option>
                                </select>
                            </div>
                        </div>

                        <!-- success -->
                        <div class="alert alert-success mb0 x-hidden"></div>
                        <!-- success -->

                        <!-- error -->
                        <div class="alert alert-danger mb0 x-hidden"></div>
                        <!-- error -->
                    </div>
                    <div class="card-footer text-right">
                        <button type="submit" class="btn btn-primary"><?php echo __("Save Changes");?>
</button>
                    </div>
                </form>
            </div>
            <!-- Currency -->
        </div>

    <?php } elseif ($_smarty_tpl->tpl_vars['sub_view']->value == "limits") {?>

        <!-- card-header -->
        <div class="card-header with-icon">
            <!-- panel title -->
            <i class="fa fa-cog mr10"></i><?php echo __("Settings");?>
 &rsaquo; <?php echo __("Limits");?>

            <!-- panel title -->
        </div>
        <!-- card-header -->

        <!-- Limits -->
        <form class="js_ajax-forms " data-url="admin/settings.php?edit=limits">
            <div class="card-body">
                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        <?php echo __("Data Heartbeat");?>

                    </label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" name="data_heartbeat" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['data_heartbeat'];?>
">
                        <span class="form-text">
                            <?php echo __("The update interval to check for new data (in seconds)");?>

                        </span>
                    </div>
                </div>

                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        <?php echo __("Chat Heartbeat");?>

                    </label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" name="chat_heartbeat" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['chat_heartbeat'];?>
">
                        <span class="form-text">
                            <?php echo __("The update interval to check for new messages (in seconds)");?>

                        </span>
                    </div>
                </div>

                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        <?php echo __("Offline After");?>

                    </label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" name="offline_time" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['offline_time'];?>
">
                        <span class="form-text">
                            <?php echo __("The amount of time to be considered online since the last user's activity (in seconds)");?>
<br>
                            <?php echo __("The maximim value is one day = 86400 seconds");?>

                        </span>
                    </div>
                </div>

                <div class="divider"></div>
                
                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        <?php echo __("Minimum Results");?>

                    </label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" name="min_results" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['min_results'];?>
">
                        <span class="form-text">
                            <?php echo __("The Min number of results per request");?>

                        </span>
                    </div>
                </div>

                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        <?php echo __("Maximum Results");?>

                    </label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" name="max_results" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['max_results'];?>
">
                        <span class="form-text">
                            <?php echo __("The Max number of results per request");?>

                        </span>
                    </div>
                </div>

                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        <?php echo __("Minimum Even Results");?>

                    </label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" name="min_results_even" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['min_results_even'];?>
">
                        <span class="form-text">
                            <?php echo __("The Min even number of results per request");?>

                        </span>
                    </div>
                </div>

                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        <?php echo __("Maximum Even Results");?>

                    </label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" name="max_results_even" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['max_results_even'];?>
">
                        <span class="form-text">
                            <?php echo __("The Max even number of results per request");?>

                        </span>
                    </div>
                </div>

                <!-- success -->
                <div class="alert alert-success mb0 x-hidden"></div>
                <!-- success -->

                <!-- error -->
                <div class="alert alert-danger mb0 x-hidden"></div>
                <!-- error -->
            </div>
            <div class="card-footer text-right">
                <button type="submit" class="btn btn-primary"><?php echo __("Save Changes");?>
</button>
            </div>
        </form>
        <!-- Limits -->

    <?php } elseif ($_smarty_tpl->tpl_vars['sub_view']->value == "analytics") {?>

        <!-- card-header -->
        <div class="card-header with-icon">
            <!-- panel title -->
            <i class="fa fa-cog mr10"></i><?php echo __("Settings");?>
 &rsaquo; <?php echo __("Analytics");?>

            <!-- panel title -->
        </div>
        <!-- card-header -->

        <!-- Analytics -->
        <form class="js_ajax-forms " data-url="admin/settings.php?edit=analytics">
            <div class="card-body">
                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        <?php echo __("Tracking Code");?>

                    </label>
                    <div class="col-md-9">
                        <textarea class="form-control" name="message" rows="3"><?php echo $_smarty_tpl->tpl_vars['system']->value['analytics_code'];?>
</textarea>
                        <span class="form-text">
                            <?php echo __("The analytics tracking code (Ex: Google Analytics)");?>

                        </span>
                    </div>
                </div>

                <!-- success -->
                <div class="alert alert-success mb0 x-hidden"></div>
                <!-- success -->

                <!-- error -->
                <div class="alert alert-danger mb0 x-hidden"></div>
                <!-- error -->
            </div>
            <div class="card-footer text-right">
                <button type="submit" class="btn btn-primary"><?php echo __("Save Changes");?>
</button>
            </div>
        </form>
        <!-- Analytics -->

    <?php }?>

</div><?php }
}
