<?php
/* Smarty version 3.1.33, created on 2020-04-06 10:03:50
  from '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/__feeds_post.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e8afe86812e62_92060965',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd1b5abec61091a4e61721e09ba49b1b276c156c3' => 
    array (
      0 => '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/__feeds_post.tpl',
      1 => 1585835649,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:__feeds_post.body.tpl' => 1,
    'file:__feeds_post.social.tpl' => 1,
    'file:__feeds_post.comments.tpl' => 1,
  ),
),false)) {
function content_5e8afe86812e62_92060965 (Smarty_Internal_Template $_smarty_tpl) {
if (!$_smarty_tpl->tpl_vars['standalone']->value) {?><li><?php }?>
    <!-- post -->
    <div class="post <?php if ($_smarty_tpl->tpl_vars['boosted']->value) {?>boosted<?php }?>" data-id="<?php echo $_smarty_tpl->tpl_vars['post']->value['post_id'];?>
">

        <?php if ($_smarty_tpl->tpl_vars['standalone']->value && $_smarty_tpl->tpl_vars['pinned']->value) {?>
            <div class="pin-icon" data-toggle="tooltip" title="<?php echo __("Pinned Post");?>
">
                <i class="fa fa-bookmark"></i>
            </div>
        <?php }?>

        <?php if ($_smarty_tpl->tpl_vars['standalone']->value && $_smarty_tpl->tpl_vars['boosted']->value) {?>
            <div class="boosted-icon" data-toggle="tooltip" title="<?php echo __("Promoted");?>
">
                <i class="fa fa-bullhorn"></i>
            </div>
        <?php }?>

        <!-- post body -->
        <div class="post-body">
            
            <?php $_smarty_tpl->_subTemplateRender('file:__feeds_post.body.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_post'=>$_smarty_tpl->tpl_vars['post']->value,'_shared'=>false), 0, false);
?>

            <!-- post stats -->
            <div class="post-stats">
                <!-- likes -->
                <span class="text-clickable" data-toggle="modal" data-url="posts/who_likes.php?post_id=<?php echo $_smarty_tpl->tpl_vars['post']->value['post_id'];?>
">
                    <i class="fa fa-thumbs-up"></i> 
                    <span class="js_post-likes-num">
                        <?php echo $_smarty_tpl->tpl_vars['post']->value['likes'];?>

                    </span>
                </span>
                <!-- likes -->

                <span class="float-right">
                    <!-- comments -->
                    <span class="text-clickable js_comments-toggle">
                        <i class="fa fa-comments"></i> <?php echo $_smarty_tpl->tpl_vars['post']->value['comments'];?>
 <?php echo __("Comments");?>

                    </span>
                    <!-- comments -->

                    <!-- shares -->
                    <span class="text-clickable ml10 <?php if ($_smarty_tpl->tpl_vars['post']->value['shares'] == 0) {?>x-hidden<?php }?>" data-toggle="modal" data-url="posts/who_shares.php?post_id=<?php echo $_smarty_tpl->tpl_vars['post']->value['post_id'];?>
">
                        <i class="fa fa-share"></i> <?php echo $_smarty_tpl->tpl_vars['post']->value['shares'];?>
 <?php echo __("Shares");?>

                    </span>
                    <!-- shares -->
                </span>
            </div>
            <!-- post stats -->

            <!-- post actions -->
            <?php if ($_smarty_tpl->tpl_vars['user']->value->_logged_in) {?>
                <div class="post-actions clearfix">
                    <!-- like -->
                    <div class="action-btn <?php if ($_smarty_tpl->tpl_vars['post']->value['i_like']) {?>text-active js_unlike-post<?php } else { ?>js_like-post<?php }?>">
                        <i class="fa fa-thumbs-up fa-fw mr5"></i><span><?php echo __("Like");?>
</span>
                    </div>
                    <!-- like -->

                    <!-- comment -->
                    <div class="action-btn js_comment <?php if ($_smarty_tpl->tpl_vars['post']->value['comments_disabled']) {?>x-hidden<?php }?>">
                        <i class="fa fa-comment fa-fw mr5"></i><span><?php echo __("Comment");?>
</span>
                    </div>
                    <!-- comment -->

                    <!-- share -->
                    <?php if ($_smarty_tpl->tpl_vars['post']->value['privacy'] == "public") {?>
                        <div class="action-btn <?php if ($_smarty_tpl->tpl_vars['system']->value['social_share_enabled']) {?>js_share-toggle<?php } else { ?>js_share<?php }?>" data-id="<?php echo $_smarty_tpl->tpl_vars['post']->value['post_id'];?>
">
                            <i class="fa fa-share fa-fw mr5"></i><span><?php echo __("Share");?>
</span>
                        </div>
                    <?php }?>
                    <!-- share -->
                </div>
            <?php }?>
            <!-- post actions -->

        </div>
        <!-- post body -->

        <!-- post footer -->
        <div class="post-footer <?php if (!$_smarty_tpl->tpl_vars['standalone']->value) {?>x-hidden<?php }?>">
            <!-- social sharing -->
            <?php $_smarty_tpl->_subTemplateRender('file:__feeds_post.social.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
            <!-- social sharing -->

            <!-- comments -->
            <?php $_smarty_tpl->_subTemplateRender('file:__feeds_post.comments.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
            <!-- comments -->
        </div>
        <!-- post footer -->

    </div>
    <!-- post -->
<?php if (!$_smarty_tpl->tpl_vars['standalone']->value) {?></li><?php }
}
}
