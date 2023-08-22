<?php
/* Smarty version 3.1.33, created on 2020-03-13 17:04:16
  from '/var/www/html/qrsmusic/content/themes/default/templates/admin.points.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e6bbd10320f31_21306608',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'bf97ed0f90927fb83e81f478050f569134147e8e' => 
    array (
      0 => '/var/www/html/qrsmusic/content/themes/default/templates/admin.points.tpl',
      1 => 1573225137,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5e6bbd10320f31_21306608 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="card">
    <div class="card-header with-icon">
        <i class="fa fa-piggy-bank mr10"></i><?php echo __("Points System");?>

        <?php if ($_smarty_tpl->tpl_vars['sub_view']->value == "payments") {?> &rsaquo; <?php echo __("Payment Requests");
}?>
    </div>

    <?php if ($_smarty_tpl->tpl_vars['sub_view']->value == '') {?>

        <form class="js_ajax-forms " data-url="admin/settings.php?edit=points">
            <div class="card-body">
                <div class="form-table-row">
                    <div>
                        <div class="form-control-label h6"><?php echo __("Points Enabled");?>
</div>
                        <div class="form-text d-none d-sm-block"><?php echo __("Enable or Disable the points system");?>
</div>
                    </div>
                    <div class="text-right">
                        <label class="switch" for="points_enabled">
                            <input type="checkbox" name="points_enabled" id="points_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['points_enabled']) {?>checked<?php }?>>
                            <span class="slider round"></span>
                        </label>
                    </div>
                </div>

                <div class="divider"></div>

                <div class="form-table-row">
                    <div>
                        <div class="form-control-label h6"><?php echo __("Users can withdraw earned money");?>
</div>
                        <div class="form-text d-none d-sm-block"><?php echo __("If enabled users will be able to withdraw earned money");?>
</div>
                    </div>
                    <div class="text-right">
                        <label class="switch" for="points_money_withdraw_enabled">
                            <input type="checkbox" name="points_money_withdraw_enabled" id="points_money_withdraw_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['points_money_withdraw_enabled']) {?>checked<?php }?>>
                            <span class="slider round"></span>
                        </label>
                    </div>
                </div>

                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        <?php echo __("Payment Method");?>

                    </label>
                    <div class="col-md-9">
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" name="points_payment_method" id="method_paypal" value="paypal" class="custom-control-input" <?php if ($_smarty_tpl->tpl_vars['system']->value['points_payment_method'] == "paypal") {?>checked<?php }?>>
                            <label class="custom-control-label" for="method_paypal"><?php echo __("Paypal");?>
</label>
                        </div>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" name="points_payment_method" id="method_skrill" value="skrill" class="custom-control-input" <?php if ($_smarty_tpl->tpl_vars['system']->value['points_payment_method'] == "skrill") {?>checked<?php }?>>
                            <label class="custom-control-label" for="method_skrill"><?php echo __("Skrill");?>
</label>
                        </div>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" name="points_payment_method" id="method_both" value="both" class="custom-control-input" <?php if ($_smarty_tpl->tpl_vars['system']->value['points_payment_method'] == "both") {?>checked<?php }?>>
                            <label class="custom-control-label" for="method_both"><?php echo __("Both");?>
</label>
                        </div>
                        <span class="form-text">
                            <?php echo __("Users can send withdrawal requests via any of these methods");?>

                        </span>
                    </div>
                </div>

                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        <?php echo __("Minimum Withdrawal Request");?>
 (<?php echo $_smarty_tpl->tpl_vars['system']->value['system_currency'];?>
)
                    </label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" name="points_min_withdrawal" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['points_min_withdrawal'];?>
">
                        <span class="form-text">
                            <?php echo __("The minimum amount of money so user can send a withdrawal request");?>

                        </span>
                    </div>
                </div>

                <div class="divider"></div>

                <div class="form-table-row">
                    <div>
                        <div class="form-control-label h6"><?php echo __("Users can transfer earned money to wallet");?>
</div>
                        <div class="form-text d-none d-sm-block"><?php echo __("If Ads enabled users will be able to transfer earned money to their wallet");?>
</div>
                    </div>
                    <div class="text-right">
                        <label class="switch" for="points_money_transfer_enabled">
                            <input type="checkbox" name="points_money_transfer_enabled" id="points_money_transfer_enabled" <?php if ($_smarty_tpl->tpl_vars['system']->value['points_money_transfer_enabled']) {?>checked<?php }?>>
                            <span class="slider round"></span>
                        </label>
                    </div>
                </div>

                <div class="divider"></div>

                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        <?php echo __("Points");?>
/<?php echo $_smarty_tpl->tpl_vars['system']->value['system_currency_symbol'];?>
1.00
                    </label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" name="points_per_currency" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['points_per_currency'];?>
">
                        <span class="form-text">
                            <?php echo __("How much points eqaul to");?>
 <?php echo $_smarty_tpl->tpl_vars['system']->value['system_currency_symbol'];?>
1
                        </span>
                    </div>
                </div>

                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        <?php echo __("Points/Post");?>

                    </label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" name="points_per_post" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['points_per_post'];?>
">
                        <span class="form-text">
                            <?php echo __("How many points user will get for each new post");?>

                        </span>
                    </div>
                </div>

                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        <?php echo __("Points/Comment");?>

                    </label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" name="points_per_comment" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['points_per_comment'];?>
">
                        <span class="form-text">
                            <?php echo __("How many points user will get for each new comment");?>

                        </span>
                    </div>
                </div>

                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        <?php echo __("Points/Reaction");?>

                    </label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" name="points_per_reaction" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['points_per_reaction'];?>
">
                        <span class="form-text">
                            <?php echo __("How many points user will get for each reaction");?>

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

    <?php } elseif ($_smarty_tpl->tpl_vars['sub_view']->value == "payments") {?>

        <div class="card-body">
            <div class="alert alert-warning">
                <div class="icon">
                    <i class="fab fa-paypal fa-2x"></i>
                </div>
                <div class="text">
                    <strong><?php echo __("Payment Requests");?>
</strong><br>
                    <?php echo __("You will need to make the payments from your Paypal/Skrill account");?>
.<br>
                    <?php echo __("After making the payment you can mark the payment request as paid");?>
.
                </div>
            </div>
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover js_dataTable">
                    <thead>
                        <tr>
                            <th><?php echo __("ID");?>
</th>
                            <th><?php echo __("User");?>
</th>
                            <th><?php echo __("Email");?>
</th>
                            <th><?php echo __("Amount");?>
</th>
                            <th><?php echo __("Method");?>
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
                                <td><?php echo $_smarty_tpl->tpl_vars['row']->value['payment_id'];?>
</td>
                                <td>
                                    <a target="_blank" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/<?php echo $_smarty_tpl->tpl_vars['row']->value['user_name'];?>
">
                                        <img class="tbl-image" src="<?php echo $_smarty_tpl->tpl_vars['row']->value['user_picture'];?>
">
                                        <?php echo $_smarty_tpl->tpl_vars['row']->value['user_firstname'];?>
 <?php echo $_smarty_tpl->tpl_vars['row']->value['user_lastname'];?>

                                    </a>
                                </td>
                                <td><?php echo $_smarty_tpl->tpl_vars['row']->value['email'];?>
</td>
                                <td><?php echo $_smarty_tpl->tpl_vars['system']->value['system_currency_symbol'];
echo number_format($_smarty_tpl->tpl_vars['row']->value['amount'],2);?>
</td>
                                <td>
                                    <span class="badge badge-pill badge-lg <?php if ($_smarty_tpl->tpl_vars['row']->value['method'] == 'paypal') {?>badge-info<?php } else { ?>badge-danger<?php }?>">
                                        <?php echo ucfirst($_smarty_tpl->tpl_vars['row']->value['method']);?>

                                    </span>
                                </td>
                                <td>
                                    <button data-toggle="tooltip" data-placement="top" title='<?php echo __("Mark as Paid");?>
' class="btn btn-sm btn-icon btn-rounded btn-success js_admin-withdraw" data-type="points" data-handle="approve" data-id="<?php echo $_smarty_tpl->tpl_vars['row']->value['payment_id'];?>
">
                                            <i class="fa fa-check"></i>
                                    </button>
                                    <button data-toggle="tooltip" data-placement="top" title='<?php echo __("Decline");?>
' class="btn btn-sm btn-icon btn-rounded btn-danger js_admin-withdraw" data-type="points" data-handle="decline" data-id="<?php echo $_smarty_tpl->tpl_vars['row']->value['payment_id'];?>
">
                                        <i class="fa fa-times"></i>
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

    <?php }?>
</div><?php }
}
