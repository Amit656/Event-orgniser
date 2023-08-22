<?php
/* Smarty version 3.1.33, created on 2020-03-13 10:43:14
  from '/var/www/html/qrsmusic/content/themes/default/templates/admin.events.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e6b63c255a3a7_00830500',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '02896f6c5aa38fa4c7b0fcdcb61c84fc587946ce' => 
    array (
      0 => '/var/www/html/qrsmusic/content/themes/default/templates/admin.events.tpl',
      1 => 1573225137,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5e6b63c255a3a7_00830500 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="card">
    <div class="card-header with-icon">
        <?php if ($_smarty_tpl->tpl_vars['sub_view']->value == "edit_event") {?>
            <div class="float-right">
                <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/admincp/events" class="btn btn-sm btn-light">
                    <i class="fa fa-arrow-circle-left mr5"></i><?php echo __("Go Back");?>

                </a>
                <a target="_blank" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/events/<?php echo $_smarty_tpl->tpl_vars['data']->value['event_id'];?>
" class="btn btn-sm btn-info">
                    <i class="fa fa-tv fa-fw mr5"></i><?php echo __("View Event");?>

                </a>
            </div>
        <?php } elseif ($_smarty_tpl->tpl_vars['sub_view']->value == "categories") {?>
            <div class="float-right">
                <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/admincp/events/add_category" class="btn btn-sm btn-primary">
                    <i class="fa fa-plus mr5"></i><?php echo __("Add New Category");?>

                </a>
            </div>
        <?php } elseif ($_smarty_tpl->tpl_vars['sub_view']->value == "add_category" || $_smarty_tpl->tpl_vars['sub_view']->value == "edit_category") {?>
            <div class="float-right">
                <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/admincp/events/categories" class="btn btn-sm btn-light">
                    <i class="fa fa-arrow-circle-left mr5"></i><?php echo __("Go Back");?>

                </a>
            </div>
        <?php }?>
        <i class="fa fa-calendar mr10"></i><?php echo __("Events");?>

        <?php if ($_smarty_tpl->tpl_vars['sub_view']->value == "edit_event") {?> &rsaquo; <?php echo $_smarty_tpl->tpl_vars['data']->value['event_title'];
}?>
        <?php if ($_smarty_tpl->tpl_vars['sub_view']->value == "categories") {?> &rsaquo; <?php echo __("Categories");
}?>
        <?php if ($_smarty_tpl->tpl_vars['sub_view']->value == "add_category") {?> &rsaquo; <?php echo __("Categories");?>
 &rsaquo; <?php echo __("Add New Category");
}?>
        <?php if ($_smarty_tpl->tpl_vars['sub_view']->value == "edit_category") {?> &rsaquo; <?php echo __("Categories");?>
 &rsaquo; <?php echo $_smarty_tpl->tpl_vars['data']->value['category_name'];
}?>
    </div>

    <?php if ($_smarty_tpl->tpl_vars['sub_view']->value == '') {?>

        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover js_dataTable">
                    <thead>
                        <tr>
                            <th><?php echo __("ID");?>
</th>
                            <th><?php echo __("Event");?>
</th>
                            <th><?php echo __("Admin");?>
</th>
                            <th><?php echo __("Privacy");?>
</th>
                            <th><?php echo __("Interested");?>
</th>
                            <th><?php echo __("Going");?>
</th>
                            <th><?php echo __("Invited");?>
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
                                <td>
                                    <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/events/<?php echo $_smarty_tpl->tpl_vars['row']->value['event_id'];?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['row']->value['event_id'];?>
</a>
                                </td>
                                <td>
                                    <a target="_blank" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/events/<?php echo $_smarty_tpl->tpl_vars['row']->value['event_id'];?>
">
                                        <?php echo $_smarty_tpl->tpl_vars['row']->value['event_title'];?>

                                    </a>
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
                                <td>
                                    <?php if ($_smarty_tpl->tpl_vars['row']->value['event_privacy'] == "public") {?>
                                        <i class="fa fa-globe fa-fw mr5"></i><?php echo __("Public");?>

                                    <?php } elseif ($_smarty_tpl->tpl_vars['row']->value['event_privacy'] == "closed") {?>
                                        <i class="fa fa-unlock-alt fa-fw mr5"></i><?php echo __("Closed");?>

                                    <?php } elseif ($_smarty_tpl->tpl_vars['row']->value['event_privacy'] == "secret") {?>
                                        <i class="fa fa-lock fa-fw mr5"></i><?php echo __("Secret");?>

                                    <?php }?>
                                </td>
                                <td><?php echo $_smarty_tpl->tpl_vars['row']->value['event_interested'];?>
</td>
                                <td><?php echo $_smarty_tpl->tpl_vars['row']->value['event_going'];?>
</td>
                                <td><?php echo $_smarty_tpl->tpl_vars['row']->value['event_invited'];?>
</td>
                                <td>
                                    <a data-toggle="tooltip" data-placement="top" title='<?php echo __("Edit");?>
' href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/admincp/events/edit_event/<?php echo $_smarty_tpl->tpl_vars['row']->value['event_id'];?>
" class="btn btn-sm btn-icon btn-rounded btn-primary">
                                        <i class="fa fa-pencil-alt"></i>
                                    </a>
                                    <button data-toggle="tooltip" data-placement="top" title='<?php echo __("Delete");?>
' class="btn btn-sm btn-icon btn-rounded btn-danger js_admin-deleter" data-handle="event" data-id="<?php echo $_smarty_tpl->tpl_vars['row']->value['event_id'];?>
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

    <?php } elseif ($_smarty_tpl->tpl_vars['sub_view']->value == "edit_event") {?>

        <form class="js_ajax-forms " data-url="admin/events.php?do=edit_event&id=<?php echo $_smarty_tpl->tpl_vars['data']->value['event_id'];?>
">
            <div class="card-body">
                <div class="row">
                    <div class="col-12 col-md-2 text-center mb20">
                        <img class="img-fluid img-thumbnail rounded-circle" src="<?php echo $_smarty_tpl->tpl_vars['data']->value['event_picture'];?>
">
                    </div>
                    <div class="col-12 col-md-5 mb20">
                        <ul class="list-group">
                            <li class="list-group-item">
                                <span class="float-right badge badge-lg badge-pill badge-secondary"><?php echo $_smarty_tpl->tpl_vars['data']->value['event_id'];?>
</span>
                                <?php echo __("Event ID");?>

                            </li>
                            <li class="list-group-item">
                                <span class="float-right badge badge-lg badge-pill badge-secondary">
                                    <?php if ($_smarty_tpl->tpl_vars['data']->value['event_privacy'] == "public") {?>
                                        <i class="fa fa-globe fa-fw mr5"></i><?php echo __("Public");?>

                                    <?php } elseif ($_smarty_tpl->tpl_vars['data']->value['event_privacy'] == "closed") {?>
                                        <i class="fa fa-unlock-alt fa-fw mr5"></i><?php echo __("Closed");?>

                                    <?php } elseif ($_smarty_tpl->tpl_vars['data']->value['event_privacy'] == "secret") {?>
                                        <i class="fa fa-lock fa-fw mr5"></i><?php echo __("Secret");?>

                                    <?php }?>
                                </span>
                                <?php echo __("Privacy");?>

                            </li>
                        </ul>
                    </div>
                    <div class="col-12 col-md-5 mb20">
                        <ul class="list-group">
                            <li class="list-group-item">
                                <span class="float-right badge badge-lg badge-pill badge-secondary"><?php echo $_smarty_tpl->tpl_vars['data']->value['event_interested'];?>
</span>
                                <?php echo __("Interested");?>

                            </li>
                            <li class="list-group-item">
                                <span class="float-right badge badge-lg badge-pill badge-secondary"><?php echo $_smarty_tpl->tpl_vars['data']->value['event_going'];?>
</span>
                                <?php echo __("Going");?>

                            </li>
                            <li class="list-group-item">
                                <span class="float-right badge badge-lg badge-pill badge-secondary"><?php echo $_smarty_tpl->tpl_vars['data']->value['event_invited'];?>
</span>
                                <?php echo __("Invited");?>

                            </li>
                        </ul>
                    </div>
                </div>

                <!-- tabs nav -->
                <ul class="nav nav-tabs mb20">
                    <li class="nav-item">
                        <a class="nav-link active" href="#basic" data-toggle="tab">
                            <i class="fa fa-cog fa-fw mr5"></i><strong class="pr5"><?php echo __("Event Info");?>
</strong>
                        </a>
                    </li>
                </ul>
                <!-- tabs nav -->

                <!-- tabs content -->
                <div class="tab-content">
                    <!-- basic tab -->
                    <div class="tab-pane active" id="basic">
                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Admin");?>

                            </label>
                            <div class="col-md-9">
                                <a target="_blank" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/<?php echo $_smarty_tpl->tpl_vars['data']->value['user_name'];?>
">
                                    <img class="tbl-image" src="<?php echo $_smarty_tpl->tpl_vars['data']->value['user_picture'];?>
">
                                    <?php echo $_smarty_tpl->tpl_vars['data']->value['user_firstname'];?>
 <?php echo $_smarty_tpl->tpl_vars['data']->value['user_lastname'];?>

                                </a>
                                <a target="_blank" data-toggle="tooltip" data-placement="top" title='<?php echo __("Edit");?>
' href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/admincp/users/edit/<?php echo $_smarty_tpl->tpl_vars['data']->value['user_id'];?>
" class="btn btn-sm btn-light btn-icon btn-rounded ml10">
                                    <i class="fa fa-pencil-alt"></i>
                                </a>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Name Your Event");?>

                            </label>
                            <div class="col-md-9">
                                <input class="form-control" name="title" value="<?php echo $_smarty_tpl->tpl_vars['data']->value['event_title'];?>
">
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Location");?>

                            </label>
                            <div class="col-md-9">
                                <input class="form-control" name="location" value="<?php echo $_smarty_tpl->tpl_vars['data']->value['event_location'];?>
">
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Start Date");?>

                            </label>
                            <div class="col-md-9">
                                <div class="input-group date js_datetimepicker" id="start_date" data-target-input="nearest">
                                    <input type='text' class="form-control datetimepicker-input" data-target="#start_date" name="start_date" value="<?php echo get_datetime($_smarty_tpl->tpl_vars['data']->value['event_start_date']);?>
" />
                                    <div class="input-group-append" data-target="#start_date" data-toggle="datetimepicker">
                                        <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                    </div>
                                </div>
                                <span class="form-text">
                                    <?php echo __("Your current server datetime is");?>
: <?php echo $_smarty_tpl->tpl_vars['date']->value;?>
 (UTC)
                                </span>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("End Date");?>

                            </label>
                            <div class="col-md-9">
                                <div class="input-group date js_datetimepicker" id="end_date" data-target-input="nearest">
                                    <input type='text' class="form-control datetimepicker-input" data-target="#end_date" name="end_date" value="<?php echo get_datetime($_smarty_tpl->tpl_vars['data']->value['event_end_date']);?>
" />
                                    <div class="input-group-append" data-target="#end_date" data-toggle="datetimepicker">
                                        <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                    </div>
                                </div>
                                <span class="form-text">
                                    <?php echo __("Your current server datetime is");?>
: <?php echo $_smarty_tpl->tpl_vars['date']->value;?>
 (UTC)
                                </span>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Select Privacy");?>

                            </label>
                            <div class="col-md-9">
                                <select class="form-control selectpicker" name="privacy">
                                    <option <?php if ($_smarty_tpl->tpl_vars['data']->value['event_privacy'] == "public") {?>selected<?php }?> value="public" data-content="<div class='option'><div class='icon'><i class='fa fa-globe fa-lg'></i></div><div class='text'><b><?php echo __("Public Event");?>
</b><br><?php echo __("Anyone can see the event, its users and posts");?>
.
                                    </div></div>"><?php echo __("Public Event");?>
</option>
                                    <option <?php if ($_smarty_tpl->tpl_vars['data']->value['event_privacy'] == "closed") {?>selected<?php }?> value="closed" data-content="<div class='option'><div class='icon'><i class='fa fa-unlock-alt fa-lg'></i></div><div class='text'><b><?php echo __("Closed Event");?>
</b><br><?php echo __("Only event users can see posts");?>
.
                                    </div></div>"><?php echo __("Closed Event");?>
</option>
                                    <option <?php if ($_smarty_tpl->tpl_vars['data']->value['event_privacy'] == "secret") {?>selected<?php }?> value="secret" data-content="<div class='option'><div class='icon'><i class='fa fa-lock fa-lg'></i></div><div class='text'><b><?php echo __("Secret Event");?>
</b><br><?php echo __("Only invited users and event users can find the event");?>
.
                                    </div></div>"><?php echo __("Secret Event");?>
</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("Category");?>

                            </label>
                            <div class="col-md-9">
                                <select class="form-control" name="category">
                                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['data']->value['categories'], 'category');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['category']->value) {
?>
                                        <option <?php if ($_smarty_tpl->tpl_vars['data']->value['event_category'] == $_smarty_tpl->tpl_vars['category']->value['category_id']) {?>selected<?php }?> value="<?php echo $_smarty_tpl->tpl_vars['category']->value['category_id'];?>
"><?php echo __($_smarty_tpl->tpl_vars['category']->value['category_name']);?>
</option>
                                    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                </select>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                <?php echo __("About");?>

                            </label>
                            <div class="col-md-9">
                                <textarea class="form-control" name="description"><?php echo $_smarty_tpl->tpl_vars['data']->value['event_description'];?>
</textarea>
                            </div>
                        </div>

                        <!-- success -->
                        <div class="alert alert-success mb0 x-hidden"></div>
                        <!-- success -->

                        <!-- error -->
                        <div class="alert alert-danger mb0 x-hidden"></div>
                        <!-- error -->
                    </div>
                </div>
                <!-- tabs content -->
            </div>
            <div class="card-footer text-right">
                <button type="submit" class="btn btn-primary"><?php echo __("Save Changes");?>
</button>
            </div>
        </form>

    <?php } elseif ($_smarty_tpl->tpl_vars['sub_view']->value == "categories") {?>

        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover js_dataTable">
                    <thead>
                        <tr>
                            <th><?php echo __("ID");?>
</th>
                            <th><?php echo __("Title");?>
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
                                <td><?php echo $_smarty_tpl->tpl_vars['row']->value['category_id'];?>
</td>
                                <td><?php echo $_smarty_tpl->tpl_vars['row']->value['category_name'];?>
</td>
                                <td>
                                    <a data-toggle="tooltip" data-placement="top" title='<?php echo __("Edit");?>
' href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/admincp/events/edit_category/<?php echo $_smarty_tpl->tpl_vars['row']->value['category_id'];?>
" class="btn btn-sm btn-icon btn-rounded btn-primary">
                                        <i class="fa fa-pencil-alt"></i>
                                    </a>
                                    <button data-toggle="tooltip" data-placement="top" title='<?php echo __("Delete");?>
' class="btn btn-sm btn-icon btn-rounded btn-danger js_admin-deleter" data-handle="event_category" data-id="<?php echo $_smarty_tpl->tpl_vars['row']->value['category_id'];?>
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

    <?php } elseif ($_smarty_tpl->tpl_vars['sub_view']->value == "add_category") {?>

        <form class="js_ajax-forms " data-url="admin/events.php?do=add_category">
            <div class="card-body">
                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        <?php echo __("Name");?>

                    </label>
                    <div class="col-md-9">
                        <input class="form-control" name="category_name">
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

    <?php } elseif ($_smarty_tpl->tpl_vars['sub_view']->value == "edit_category") {?>

        <form class="js_ajax-forms " data-url="admin/events.php?do=edit_category&id=<?php echo $_smarty_tpl->tpl_vars['data']->value['category_id'];?>
">
            <div class="card-body">
                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        <?php echo __("Name");?>

                    </label>
                    <div class="col-md-9">
                        <input class="form-control" name="category_name" value="<?php echo $_smarty_tpl->tpl_vars['data']->value['category_name'];?>
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

    <?php }?>
</div><?php }
}
