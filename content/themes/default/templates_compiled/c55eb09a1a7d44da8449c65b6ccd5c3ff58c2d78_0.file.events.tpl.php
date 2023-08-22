<?php
/* Smarty version 3.1.33, created on 2020-04-09 13:56:41
  from '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/events.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e8f2999b36b70_19763850',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c55eb09a1a7d44da8449c65b6ccd5c3ff58c2d78' => 
    array (
      0 => '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/events.tpl',
      1 => 1586440599,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:_head.tpl' => 1,
    'file:_header.tpl' => 1,
    'file:_sidebar.tpl' => 1,
    'file:create_connection.tpl' => 1,
    'file:__feeds_event.tpl' => 1,
    'file:_footer.tpl' => 1,
  ),
),false)) {
function content_5e8f2999b36b70_19763850 (Smarty_Internal_Template $_smarty_tpl) {
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
/events"><?php echo __("Discover");?>
</a>
                    </li>
                    <li <?php if ($_smarty_tpl->tpl_vars['view']->value == "manage") {?>class="active"<?php }?>>
                        <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/events/manage"><?php echo __("My Events");?>
</a>
                    </li>
                    <li <?php if ($_smarty_tpl->tpl_vars['view']->value == "going") {?>class="active"<?php }?>>
                        <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/events/going"><?php echo __("Going");?>
</a>
                    </li>
                    <li <?php if ($_smarty_tpl->tpl_vars['view']->value == "interested") {?>class="active"<?php }?>>
                        <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/events/interested"><?php echo __("Interested");?>
</a>
                    </li>
                    <li <?php if ($_smarty_tpl->tpl_vars['view']->value == "invited") {?>class="active"<?php }?>>
                        <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/events/invited"><?php echo __("Invited");?>
</a>
                    </li>                    
                </ul>
                <?php if ($_smarty_tpl->tpl_vars['user']->value->_data['user_group'] < 3 || $_smarty_tpl->tpl_vars['system']->value['events_enabled']) {?>
                    <div class="mt10 float-right">
                        
                        <button class="btn btn-sm btn-primary d-none d-lg-block" id="create_connection">
                            <i class="fa fa-plus-circle mr5"></i><?php echo __("Create Connection");?>

                        </button>
                        <button class="btn btn-sm btn-icon btn-primary d-block d-lg-none" data-toggle="modal" data-url="#create-event">
                            <i class="fa fa-plus-circle"></i>
                        </button>
                    </div>
                <?php }?>
            </div>
            <!-- tabs -->

            <!-- content -->
            <div>
                <div class="card" id="event-board">
                    <div class="card-header with-icon">
                        <i class="fa fa-bullhorn mr10"></i><?php echo __("Events");?>

                    </div>
                    <form class="js_ajax-forms" data-url="pages_groups_events/create.php?do=create&type=event">
                        <div class="card-body">
                          <div class="row">
                            <div class="col-md-8">
                                <div class="form-group form-row">
                                    <div class="col-md-6" style="margin-bottom:30px;">
                                        <label class="form-control-label">
                                            <?php echo __("What do you want to do?");?>

                                        </label>
                                        <select class="form-control" name="connection_type" id="get_connect_name">
                                            <option value="" class=""><a href=""><?php echo __("Connect My Connectors");?>
</a></option>
                                            <option value="connect_to_friend" class=""><?php echo __("Connect to Friend(s)");?>
</option>
                                            <option value="connect_to_group" class=""><?php echo __("Connect to Group");?>
</option>
                                            <option value="request_performance" class=""><?php echo __("Request Performance");?>
</option>
                                            <option value="request_lesson" class=""><?php echo __("Request Lesson");?>
</option>
                                            <option value="make_yourself_available" class=""><?php echo __("Make Yourself Available");?>
</option>
                                            <option value="create_session" class=""><?php echo __("Create Session");?>
</option>
                                            <option value="create_concert" class=""><?php echo __("Create Concert");?>
</option>
                                            <option value="join_concert" class=""><?php echo __("Join Concert");?>
</option>
                                        </select>
                                    </div>
                                    <div class="public-event-invite-friends">
                                        <div class="col-md-7" style="margin-left:10px">
                                            <label class="form-control-label">
                                                <?php echo __("Invite Friends, Groups");?>

                                            </label>
                                            <input class="form-control" name="invite" placeholder="Friends, Groups Comma Delimited">
                                        </div>
                                        <div class="col-md-12" style="margin-left:20px; margin-top:20px;">
                                            <input type="checkbox" name="open" placeholder="Start Time">
                                            <label class="form-control-label">
                                                <?php echo __("Public Event");?>

                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4" id="session-box">
                                <div class="form-group form-row">
                                    <div class="col-md-12">
                                        <label class="form-control-label">
                                            <?php echo __("Session Name");?>

                                        </label>
                                        <input class="form-control" name="session" placeholder="Session Name">
                                    </div>
                                </div>
                                <div class="form-group form-row">
                                    <div class="col-md-12">
                                        <input type="checkbox" name="open" placeholder="Start Time">
                                        <label class="form-control-label">
                                            <?php echo __("Always Open");?>

                                        </label>
                                    </div>
                                </div>
                                 <div class="form-group form-row">
                                    <div class="col-md-12">
                                        <label class="form-control-label">
                                            <?php echo __("Start Time");?>

                                        </label>
                                        <input class="form-control" name="start_time" placeholder="Start Time">
                                    </div>
                                </div>
                                 <div class="form-group form-row">
                                    <div class="col-md-12">
                                        <label class="form-control-label">
                                            <?php echo __("End Time");?>

                                        </label>
                                        <input class="form-control" name="end_time" placeholder="End Time">
                                    </div>
                                </div>
                            </div>
                        </div>
                            
                        </div>
                    
                         <!-- success -->
                            <div class="alert alert-success mb0 x-hidden"></div>
                            <!-- success -->

                            <!-- error -->
                            <div class="alert alert-danger mb0 x-hidden"></div>
                            <!-- error -->
                        <div class="card-body text-center" id="event-button">
                            <button type="submit" class="btn btn-primary"><?php echo __("Next");?>
</button>
                        </div>
                        <?php $_smarty_tpl->_subTemplateRender('file:create_connection.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
                    </form>
                </div>
                 <?php if ($_smarty_tpl->tpl_vars['events']->value) {?>
                    <ul class="row">
                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['events']->value, '_event');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['_event']->value) {
?>

                            <?php $_smarty_tpl->_subTemplateRender('file:__feeds_event.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_tpl'=>'box'), 0, true);
?>
                        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                    </ul>

                    <!-- see-more -->
                    <?php if (count($_smarty_tpl->tpl_vars['events']->value) >= $_smarty_tpl->tpl_vars['system']->value['max_results_even']) {?>
                        <div class="alert alert-post see-more js_see-more" data-get="<?php echo $_smarty_tpl->tpl_vars['get']->value;?>
">
                            <span><?php echo __("See More");?>
</span>
                            <div class="loader loader_small x-hidden"></div>
                        </div>
                    <?php }?>
                    <!-- see-more -->
                <?php } else { ?>
                    <p class="text-center text-muted">
                        <?php echo __("No events to show");?>

                    </p
                <?php }?>
            </div>
            
            <!-- content -->

        </div>
        <!-- content panel -->

    </div>
</div>
<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/chosen_lib/chosen.css">
<style>
.select,
.chosen-select,
.chosen-select-no-single,
.chosen-select-no-results,
.chosen-select-deselect,
.chosen-select-rtl,
.chosen-select-width {
  width: 350px;

}

.chosen-container{
    border-radius: 4px;
    border: 2px solid #d3dce3;
}

.chosen-container-multi{
    width:250px !important;
}
</style>
<!-- page content -->

  <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/chosen_lib/docsupport/jquery-3.2.1.min.js" type="text/javascript"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/chosen_lib/chosen.jquery.js" type="text/javascript"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/chosen_lib/docsupport/init.js" type="text/javascript" charset="utf-8"><?php echo '</script'; ?>
>
<?php $_smarty_tpl->_subTemplateRender('file:_footer.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<!-- date time picker includes -->
<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/date_time_picker/css/bootstrap-material-datetimepicker.css" />
<link href='http://fonts.googleapis.com/css?family=Roboto:400,500' rel='stylesheet' type='text/css'>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<?php echo '<script'; ?>
 type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-material-design/0.5.10/js/ripples.min.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-material-design/0.5.10/js/material.min.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 type="text/javascript" src="https://rawgit.com/FezVrasta/bootstrap-material-design/master/dist/js/material.min.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 type="text/javascript" src="http://momentjs.com/downloads/moment-with-locales.min.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/date_time_picker/js/bootstrap-material-datetimepicker.js"><?php echo '</script'; ?>
><?php }
}
