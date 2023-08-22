<?php
/* Smarty version 3.1.33, created on 2020-03-13 17:07:11
  from '/var/www/html/qrsmusic/content/themes/default/templates/admin.tools.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e6bbdbf012e51_88468773',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd77126a462508c42555e4f557e3c2dcd18f57055' => 
    array (
      0 => '/var/www/html/qrsmusic/content/themes/default/templates/admin.tools.tpl',
      1 => 1573225137,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5e6bbdbf012e51_88468773 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="card">
    <div class="card-header with-icon">
        <i class="fa fa-toolbox mr10"></i><?php echo __("Tools");?>

        <?php if ($_smarty_tpl->tpl_vars['sub_view']->value == "faker") {?> &rsaquo; <?php echo __("Fake Users Generator");
}?>
    </div>

    <?php if ($_smarty_tpl->tpl_vars['sub_view']->value == "faker") {?>

        <form class="js_ajax-forms " data-url="admin/tools.php?do=faker">
            <div class="card-body">
                <div class="form-table-row">
                    <div>
                        <div class="form-control-label h6"><?php echo __("Random Pictures");?>
</div>
                        <div class="form-text d-none d-sm-block"><?php echo __("Profile pictures will be generated randomly and may be dublicated");?>
</div>
                    </div>
                    <div class="text-right">
                        <label class="switch" for="random_Avatar">
                            <input type="checkbox" name="random_Avatar" id="random_Avatar">
                            <span class="slider round"></span>
                        </label>
                    </div>
                </div>

                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        <?php echo __("Number of Users");?>

                    </label>
                    <div class="col-md-9">
                        <input type="number" class="form-control" name="users_num" value="10">
                        <span class="form-text">
                            <?php echo __("How many users you want to generate (Maximum is 1000 per request)");?>

                        </span>
                    </div>
                </div>

                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        <?php echo __("Password");?>

                    </label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" name="default_password">
                        <span class="form-text">
                            <?php echo __("This password will be used for all generated accounts (Default is 123456789)");?>

                        </span>
                    </div>
                </div>

                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        <?php echo __("Names Language");?>

                    </label>
                    <div class="col-md-9">
                        <select class="form-control" name="language">
                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['system']->value['languages'], 'language');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['language']->value) {
?>
                                <?php $_smarty_tpl->_assignInScope('parts', explode('_',$_smarty_tpl->tpl_vars['language']->value['code']));?>
                                <option <?php if ($_smarty_tpl->tpl_vars['system']->value['default_language']['language_id'] == $_smarty_tpl->tpl_vars['language']->value['language_id']) {?>selected<?php }?> value="<?php echo $_smarty_tpl->tpl_vars['parts']->value[0];?>
_<?php echo strtoupper($_smarty_tpl->tpl_vars['parts']->value[1]);?>
"><?php echo $_smarty_tpl->tpl_vars['language']->value['title'];?>
</option>
                            <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                        </select>
                        <span class="form-text">
                            <?php echo __("Select the language of generated account names");?>

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
                <button type="submit" class="btn btn-danger"><i class="fa fa-bolt mr10"></i><?php echo __("Generate");?>
</button>
            </div>
        </form>

    <?php }?>
</div><?php }
}
