<?php
/* Smarty version 3.1.33, created on 2020-04-06 10:03:50
  from '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/__feeds_post.social.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e8afe8690b511_46547259',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'bfa61eb319e475ba144916a2a50e3cc073090b9a' => 
    array (
      0 => '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/__feeds_post.social.tpl',
      1 => 1585835649,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5e8afe8690b511_46547259 (Smarty_Internal_Template $_smarty_tpl) {
if ($_smarty_tpl->tpl_vars['system']->value['social_share_enabled']) {?>
    <div class="post-sharing x-hidden">
        <span class="btn btn-sm btn-rounded btn-social-icon btn-light js_share" data-id="<?php echo $_smarty_tpl->tpl_vars['post']->value['post_id'];?>
">
            <i class="fa fa-share-square"></i>
        </span>
        <a href="http://www.facebook.com/sharer.php?u=<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/posts/<?php echo $_smarty_tpl->tpl_vars['post']->value['post_id'];?>
" class="btn btn-sm btn-rounded btn-social-icon btn-facebook" target="_blank">
            <i class="fab fa-facebook-f"></i>
        </a>
        <a href="https://twitter.com/intent/tweet?url=<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/posts/<?php echo $_smarty_tpl->tpl_vars['post']->value['post_id'];?>
" class="btn btn-sm btn-rounded btn-social-icon btn-rounded btn-twitter" target="_blank">
            <i class="fab fa-twitter"></i>
        </a>
        <a href="https://vk.com/share.php?url=<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/posts/<?php echo $_smarty_tpl->tpl_vars['post']->value['post_id'];?>
" class="btn btn-sm btn-rounded btn-social-icon btn-vk" target="_blank">
            <i class="fab fa-vk"></i>
        </a>
        <a href="https://www.linkedin.com/shareArticle?mini=true&url=<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/posts/<?php echo $_smarty_tpl->tpl_vars['post']->value['post_id'];?>
" class="btn btn-sm btn-rounded btn-social-icon btn-linkedin" target="_blank">
            <i class="fab fa-linkedin"></i>
        </a>
        <a href="https://api.whatsapp.com/send?text=<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/posts/<?php echo $_smarty_tpl->tpl_vars['post']->value['post_id'];?>
" class="btn btn-sm btn-rounded btn-social-icon btn-whatsapp" target="_blank">
            <i class="fab fa-whatsapp"></i>
        </a>
        <a href="https://reddit.com/submit?url=<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/posts/<?php echo $_smarty_tpl->tpl_vars['post']->value['post_id'];?>
" class="btn btn-sm btn-rounded btn-social-icon btn-reddit" target="_blank">
            <i class="fab fa-reddit"></i>
        </a>
        <a href="https://pinterest.com/pin/create/button/?url=<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/posts/<?php echo $_smarty_tpl->tpl_vars['post']->value['post_id'];?>
" class="btn btn-sm btn-rounded btn-social-icon btn-pinterest" target="_blank">
            <i class="fab fa-pinterest"></i>
        </a>
    </div>
<?php }
}
}
