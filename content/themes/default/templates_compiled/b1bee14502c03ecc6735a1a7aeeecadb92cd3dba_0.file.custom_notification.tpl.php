<?php
/* Smarty version 3.1.33, created on 2020-04-03 10:06:55
  from '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/custom_notification.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e870abf458a77_92694967',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'b1bee14502c03ecc6735a1a7aeeecadb92cd3dba' => 
    array (
      0 => '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/custom_notification.tpl',
      1 => 1585835649,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:_head.tpl' => 1,
    'file:_header.tpl' => 1,
    'file:_sidebar.tpl' => 1,
    'file:__feeds_notification.tpl' => 1,
    'file:_footer.tpl' => 1,
  ),
),false)) {
function content_5e870abf458a77_92694967 (Smarty_Internal_Template $_smarty_tpl) {
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
            <!-- content -->
            <div>
                <div class="card custom-notification">
                    <div class="card-header with-icon text-right bell-icon" >
                        <i class="fa fa-bell fa-fw mr10"></i>
                    </div>
                     <div class="row">
                        <div class="col-md-5"></div>
                        <div class="col-md-7">
                            <!-- notifications -->
                            <div class="card" style="margin-right:10px;">
                                <div class="card-header with-icon bell-icon" style="border-bottom: 1px solid rgba(0,0,0,.125);">
                                    <?php echo __("Notifications");?>

                                </div>
                                <div class="card-body">
                                    <ul>
                                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['user']->value->_data['notifications'], 'notification');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['notification']->value) {
?>
                                        <?php $_smarty_tpl->_subTemplateRender('file:__feeds_notification.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, true);
?>
                                        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                    </ul>

                                    <?php if (count($_smarty_tpl->tpl_vars['user']->value->_data['notifications']) >= $_smarty_tpl->tpl_vars['system']->value['max_results']) {?>
                                        <!-- see-more -->
                                        <div class="alert alert-info see-more js_see-more" data-get="notifications">
                                            <span><?php echo __("See More");?>
</span>
                                            <div class="loader loader_small x-hidden"></div>
                                        </div>
                                        <!-- see-more -->
                                    <?php }?>

                                </div>
                            </div>
                            <!-- notifications -->
                        </div>
                    </div>
                </div>
                
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
