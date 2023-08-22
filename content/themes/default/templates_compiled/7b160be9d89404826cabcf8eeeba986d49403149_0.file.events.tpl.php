<?php
/* Smarty version 3.1.33, created on 2020-04-01 07:27:21
  from '/var/www/html/qrsmusic/content/themes/default/templates/events.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e844259dc7ff9_07763663',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '7b160be9d89404826cabcf8eeeba986d49403149' => 
    array (
      0 => '/var/www/html/qrsmusic/content/themes/default/templates/events.tpl',
      1 => 1585726040,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:_head.tpl' => 1,
    'file:_header.tpl' => 1,
    'file:_sidebar.tpl' => 1,
    'file:create_connection.tpl' => 1,
    'file:_footer.tpl' => 1,
  ),
),false)) {
function content_5e844259dc7ff9_07763663 (Smarty_Internal_Template $_smarty_tpl) {
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
                    <li <?php if ($_smarty_tpl->tpl_vars['view']->value == "manage") {?>class="active"<?php }?>>
                        <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/events/manage"><?php echo __("My Events");?>
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
                    <form class="js_ajax-forms " data-url="sessions/save_event_and_invite_friend.php?do=add">
                        <div class="card-body">
                          <div class="row">
                            <div class="col-md-8">
                                <div class="form-group form-row">
                                    <div class="col-md-6" style="margin-bottom:30px;">
                                        <label class="form-control-label">
                                            <?php echo __("What do you want to do?");?>

                                        </label>
                                        <select class="form-control" name="event_type" id="get_connect_name">
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
                                                        <!-- success -->

                            <!-- error -->
                                                        <!-- error -->
                        <div class="card-body text-center" id="event-button">
                            <button type="submit" class="btn btn-primary"><?php echo __("Next");?>
</button>
                        </div>
                            <?php $_smarty_tpl->_subTemplateRender('file:create_connection.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
                    </form>
                </div>
             

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
}
}
