<?php
/* Smarty version 3.1.33, created on 2020-04-03 06:54:22
  from '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/pages.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e86dd9e1584b3_54332936',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '3fb01f59847abdf925267add47908185cda30948' => 
    array (
      0 => '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/pages.tpl',
      1 => 1585835649,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:_head.tpl' => 1,
    'file:_header.tpl' => 1,
    'file:_sidebar.tpl' => 1,
    'file:__feeds_page.tpl' => 1,
    'file:_footer.tpl' => 1,
  ),
),false)) {
function content_5e86dd9e1584b3_54332936 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender('file:_head.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
$_smarty_tpl->_subTemplateRender('file:_header.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<!-- page content -->
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

            <!-- tabs -->
            <div class="content-tabs rounded-sm shadow-sm clearfix">
                <ul>
                    <li <?php if ($_smarty_tpl->tpl_vars['view']->value == '') {?>class="active"<?php }?>>
                        <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/pages"><?php echo __("Discover");?>
</a>
                    </li>
                    <li <?php if ($_smarty_tpl->tpl_vars['view']->value == "liked") {?>class="active"<?php }?>>
                        <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/pages/liked"><?php echo __("Liked Pages");?>
</a>
                    </li>
                    <li <?php if ($_smarty_tpl->tpl_vars['view']->value == "manage") {?>class="active"<?php }?>>
                        <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/pages/manage"><?php echo __("My Pages");?>
</a>
                    </li>
                </ul>
                <?php if ($_smarty_tpl->tpl_vars['user']->value->_data['user_group'] < 3 || $_smarty_tpl->tpl_vars['system']->value['pages_enabled']) {?>
                    <div class="mt10 float-right">
                        <button class="btn btn-sm btn-success d-none d-lg-block" data-toggle="modal" data-url="#create-page">
                            <i class="fa fa-plus-circle mr5"></i><?php echo __("Create Page");?>

                        </button>
                        <button class="btn btn-sm btn-icon btn-success d-block d-lg-none" data-toggle="modal" data-url="#create-page">
                            <i class="fa fa-plus-circle"></i>
                        </button>
                    </div>
                <?php }?>
            </div>
            <!-- tabs -->

            <!-- content -->
            <div>
                <?php if ($_smarty_tpl->tpl_vars['pages']->value) {?>
                    <ul class="row">
                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['pages']->value, '_page');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['_page']->value) {
?>
                            <?php $_smarty_tpl->_subTemplateRender('file:__feeds_page.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_tpl'=>'box'), 0, true);
?>
                        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                    </ul>

                    <!-- see-more -->
                    <?php if (count($_smarty_tpl->tpl_vars['pages']->value) >= $_smarty_tpl->tpl_vars['system']->value['max_results_even']) {?>
                        <div class="alert alert-post see-more js_see-more" data-get="<?php echo $_smarty_tpl->tpl_vars['get']->value;?>
" data-uid="<?php echo $_smarty_tpl->tpl_vars['user']->value->_data['user_id'];?>
">
                            <span><?php echo __("See More");?>
</span>
                            <div class="loader loader_small x-hidden"></div>
                        </div>
                    <?php }?>
                    <!-- see-more -->
                <?php } else { ?>
                    <p class="text-center text-muted">
                        <?php echo __("No pages to show");?>

                    </p>
                <?php }?>
            </div>
            <!-- content -->

        </div>
        <!-- content panel -->

    </div>
</div>
<!-- page content -->

<?php $_smarty_tpl->_subTemplateRender('file:_footer.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
