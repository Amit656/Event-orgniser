<?php
/* Smarty version 3.1.33, created on 2020-04-09 14:06:07
  from '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/create_connection.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e8f2bcf238981_36849387',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '73fb1f066c1ba7f83cf3f1f306865156b213b8cc' => 
    array (
      0 => '/var/www/html/new_working_dir_QRS/trunk/qrsmusic/content/themes/default/templates/create_connection.tpl',
      1 => 1586440782,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5e8f2bcf238981_36849387 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="create_post" id="create_post">
    <div class="container">
               
        <div class="row event-view-page-box connect-friends" id="connect-friends" style="margin-top: -25px;" >
            <div class="col-md-4" style="padding-right:4px;">
                <div class="form-group page-box">
                    <label for="invite friend" class="label-update">Invite Friend(s)</label>
                    <div>
                        <select data-placeholder="search friend" name="invite_friends[]" multiple class="chosen-select" tabindex="8">
                          <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['allUsers']->value, 'user');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['user']->value) {
?>
                            <option value="<?php echo $_smarty_tpl->tpl_vars['user']->value['user_id'];?>
"><?php echo $_smarty_tpl->tpl_vars['user']->value['user_name'];?>
</option>
                            <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                        </select>
                    </div>     
                </div>
            </div>
            <div class= "col-md-4">
              <p class="alert-message">
                
              </p>
            </div>
            <div class="col-md-4">
                <div class="form-group form-row">
                    <div class="col-md-12">
                        <label class="form-control-label">
                            <?php echo __("Session Type");?>

                        </label>
                        <select name="invite_session_type" class="form-control">
                          <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['AllSessionTypes']->value, 'sessionDetails');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['sessionDetails']->value) {
?>
                            <option value="<?php echo $_smarty_tpl->tpl_vars['sessionDetails']->value['id'];?>
" selected="selected"><?php echo $_smarty_tpl->tpl_vars['sessionDetails']->value['name'];?>
</option>
                            <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                        </select>
                    </div>
                </div>
                <div class="form-group form-row">
                    <div class="col-md-12">
                        <label class="form-control-label">
                            <?php echo __("Session Name");?>

                        </label>
                        <input class="form-control" name="invite_session" placeholder="Session Name">
                    </div>
                </div>
                <div class="form-group form-row">
                    <div class="col-md-12">
                        <input type="checkbox" id="invite_open" name="invite_open">
                        <label class="form-control-label">
                            <?php echo __("Always Open");?>

                        </label>
                    </div>
                </div>
                <div class="form-group form-row">
                    <div class="col-md-12">
                        <label class="form-control-label">
                            <?php echo __("Start Date");?>

                        </label>
                        <input class="form-control date-format" name="invite_start_date_time" placeholder="Start Date">
                    </div>
                </div>
                <div class="form-group form-row">
                    <div class="col-md-12">
                        <label class="form-control-label">
                            <?php echo __("End Date");?>

                        </label>
                        <input class="form-control date-format" name="invite_end_date_time" placeholder="End Date">
                    </div>
                </div>
            </div>
            <div class="col-md-12 text-center" style="height:fit-content; margin-top:0;">
               <input type="submit"  class="btn btn-primary" value="Invite"> 
                          </div>
            </div>
        </div>

                <div class="row event-view-page-box join-group" id="join-group" style="margin-top:-25px" >
            <div class= "col-md-4">
                <div class="form-group page-box">
                    <label for="join_group" class="label-update">Join Group</label>
                    <input type="text" class="form-control" id="join_group" name="join_group">
                </div>
            </div>
            <div class= "col-md-4">
              <p class="alert-message">
              </p>
            </div>
            <div class="col-md-4" id="session-box">
                <div class="form-group form-row">
                    <div class="col-md-12">
                        <label class="form-control-label">
                            <?php echo __("Session Name");?>

                        </label>
                        <input class="form-control" name="session" placeholder="Session Name" value="">
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
            <div class="col-md-12 text-center" style="height:fit-content; margin-top:0;">
               <input type="submit" class="btn btn-primary" value="Connect To Group">
            </div>
        </div>

                <div class="row event-view-page-box request-performance" id="request-performance" style="margin-top:-25px" >
            <div class= "col-md-4">
                <div class="form-group page-box">
                    <label for="join_group" class="label-update">Available Users</label>
                    <select class="form-control" name="type" id="get_connect_name">
                        <option value="" class=""><a href=""><?php echo __("Available Users");?>
</a></option>
                    </select>
                </div>

                 <div class="form-group page-box">
                    <label for="join_group" class="label-update">Devices</label>
                    <select class="form-control" name="type" id="get_connect_name">
                        <option value="" class=""><a href=""><?php echo __("Devices");?>
</a></option>
                    </select>
                </div>
            </div>
            <div class= "col-md-8">
              <p class="alert-message">
              </p>
            </div>
            <div class="col-md-12 text-center" style="height:fit-content; margin-top:10%;">
               <input type="submit" class="btn btn-primary" value="Request Performance">
            </div>
        </div>

                 <div class="row event-view-page-box request-lesson" id="request-lesson" style="margin-top:-30px" >
            <div class= "col-md-4">
                <div class="form-group page-box">
                    <label for="join_group" class="label-update">Available Users</label>
                    <select class="form-control" name="type" id="get_connect_name">
                        <option value="" class=""><a href=""><?php echo __("Available Users");?>
</a></option>
                    </select>
                </div>

                 <div class="form-group page-box">
                    <label for="join_group" class="label-update">Devices</label>
                    <select class="form-control" name="type" id="get_connect_name">
                        <option value="" class=""><a href=""><?php echo __("Devices");?>
</a></option>
                    </select>
                </div>
            </div>
            <div class= "col-md-8">
              <p class="alert-message">
              </p>
            </div>
             <div class="col-md-12 text-center"  style="height:fit-content; margin-top:13%;">
               <input type="submit" class="btn btn-primary" value="Request Lesson">
            </div>
        </div>

                <div class="row event-view-page-box calendar-view" id="calendar-view" style="margin-top:-25px" >
            <div class= "col-md-4">
                <div class="form-group">
                                    </div>
            </div>
             <div class="col-md-12 text-center"  style="height:fit-content; margin-top:30%;">
               <input type="submit" class="btn btn-primary" value="Done">
            </div>
        </div>

                 <div class="row event-view-page-box create-session" id="create-session" style="margin-top:-25px" >
            <div class= "col-md-4">
                <div class="form-group page-box">
                    <input type="checkbox">
                    <label for="join_group" class="label-update">Always Open</label>
                </div>
                <div class="form-group page-box">
                    <label for="join_group" class="label-update">Start Time</label>
                    <input type="text" class="form-control" id="start_time" name="start_time" placeholder="Start Time">
                </div>
                 <div class="form-group page-box">
                    <label for="join_group" class="label-update">End Time</label>
                    <input type="text" class="form-control" id="start_time" name="start_time" placeholder="End Time">
                </div>
                 <div class="form-group page-box">
                    <label for="join_group" class="label-update"></label>
                    <select class="form-control" name="type" id="get_connect_name">
                        <option value="" class=""><a href=""><?php echo __("Friends");?>
</a></option>
                        <option value="" class=""><a href=""><?php echo __("Public");?>
</a></option>
                    </select>
                </div>

                <div class="form-group page-box">
                    <label for="join_group" class="label-update">Devices</label>
                    <select class="form-control" name="type" id="get_connect_name">
                        <option value="" class=""><a href=""><?php echo __("Devices");?>
</a></option>
                    </select>
                </div>
            </div>
            <div class= "col-md-8">
                <p class="alert-message"></p>
            </div>
             <div class="col-md-12 text-center" style="height:fit-content;">
               <input type="submit" class="btn btn-primary" value="Create Session">
            </div>
        </div>

                <div class="row event-view-page-box create-concert" id="create-concert" style="margin-top:-25px" >
            <div class= "col-md-4">
                <div class="form-group page-box">
                    <label for="join_group" class="label-update">Start Time</label>
                    <input type="text" class="form-control" id="start_time" name="start_time" placeholder="Start Time">
                </div>
                 <div class="form-group page-box">
                    <label for="join_group" class="label-update">End Time</label>
                    <input type="text" class="form-control" id="start_time" name="start_time" placeholder="End Time">
                </div>
                 <div class="form-group page-box">
                    <label for="join_group" class="label-update">Privacy</label>
                    <select class="form-control" name="type" id="get_connect_name">
                        <option value="" class=""><a href=""><?php echo __("Send Link");?>
</a></option>
                        <option value="" class=""><a href=""><?php echo __("Friends");?>
</a></option>
                        <option value="" class=""><a href=""><?php echo __("Public");?>
</a></option>
                    </select>
                </div>

                <div class="form-group page-box">
                    <label for="join_group" class="label-update">Price</label>
                    <input type="text" class="form-control" id="start_time" name="start_time" placeholder="Price">
                </div>
                <div class="form-group page-box">
                    <label for="join_group" class="label-update">Event URL</label>
                    <input type="text" class="form-control" id="start_time" name="start_time" placeholder="Event URL">
                </div>

                 <div class="form-group page-box">
                    <label for="join_group" class="label-update">Devices</label>
                    <select class="form-control" name="type" id="get_connect_name">
                        <option value="" class=""><a href=""><?php echo __("Devices");?>
</a></option>
                        <option value="" class=""><a href=""><?php echo __("Devices1");?>
</a></option>
                    </select>
                </div>

            </div>
            <div class= "col-md-8">
              <p class="alert-message">
              </p>
            </div>
             <div class="col-md-12 text-center">
               <input type="submit" class="btn btn-primary" value="Create Concert">
            </div>
        </div>

                 <div class="row event-view-page-box join-concert" id="join-concert" style="margin-top:-25px" >
            <div class= "col-md-4">
                <div class="form-group page-box">
                    <label for="join_group" class="label-update">Devices</label>
                    <select class="form-control" name="type" id="get_connect_name">
                        <option value="" class=""><a href=""><?php echo __("Devices");?>
</a></option>
                        <option value="" class=""><a href=""><?php echo __("Devices1");?>
</a></option>
                    </select>
                </div>
            </div>
        </div>

                <div class="row event-view-page-box connect-connector" id="connect-connector" style="margin-top:-25px" >
            <div class= "col-md-4">
                 <div class="form-group page-box">
                    <label for="join_group" class="label-update">Connection Type</label>
                    <select class="form-control" name="type" id="get_connect_name">
                        <option value="" class=""><a href=""><?php echo __("Lesson");?>
</a></option>
                        <option value="" class=""><a href=""><?php echo __("Performance");?>
</a></option>
                    </select>
                </div>

                <div class="form-group page-box">
                    <label for="join_group" class="label-update">Device1</label>
                    <select class="form-control" name="type" id="get_connect_name">
                        <option value="" class=""><a href=""><?php echo __('');?>
</a></option>
                    </select>
                </div>
                <div class="form-group page-box">
                    <label for="join_group" class="label-update">Device2</label>
                     <select class="form-control" name="type" id="get_connect_name">
                        <option value="" class=""><a href=""><?php echo __('');?>
</a></option>
                    </select>
                </div>

                <div class="form-group page-box">
                    <input type="checkbox">
                    <label for="join_group" class="label-update">Always Open</label>
                </div>
                <div class="form-group page-box">
                    <label for="join_group" class="label-update">Start Time</label>
                    <input type="text" class="form-control" id="start_time" name="start_time" placeholder="Start Time">
                </div>
                <div class="form-group page-box">
                    <label for="join_group" class="label-update">End Time</label>
                    <input type="text" class="form-control" id="start_time" name="start_time" placeholder="End Time">
                </div>
                <div>
                    <p class="alert-message">
                    </p>
                </div>
                <div class="col-md-12 text-center">
                    <input type="submit" class="btn btn-primary" value="Next">
                </div>
        </div>
    </div>
</div>

<?php echo '<script'; ?>
>
$(document).ready(function(){
    $("#create_post").hide();
});

$('select').on('change', function() {
    var select_value = $("#get_connect_name option:selected").val();
    if(select_value === 'connect_to_friend'){
        $("#create_post").show();
        $("#session-box").hide();
        $(".public-event-invite-friends").hide();
        $("#event-button").hide();

        $("#connect-friends").css('display','flex');
        $("#join-group").hide();
        $("#request-performance").hide();
        $("#request-lesson").hide();
        $("#calendar-view").hide();
        $("#create-session").hide();
        $("#create-concert").hide();
        $("#join-concert").hide();
        $("#connect-connector").hide();
    } else if(select_value === 'connect_to_group'){
        $("#create_post").show();
        $("#session-box").hide();
        $(".public-event-invite-friends").hide();
        $("#event-button").hide();


        $("#connect-friends").hide();
        $("#join-group").css('display','flex');
        $("#request-performance").hide();
        $("#request-lesson").hide();
        $("#calendar-view").hide();
        $("#create-session").hide();
        $("#create-concert").hide();
        $("#join-concert").hide();
        $("#connect-connector").hide();
    } else if(select_value === 'request_performance'){
        $("#create_post").show();
        $("#session-box").hide();
        $(".public-event-invite-friends").hide();
        $("#event-button").hide();


        $("#connect-friends").hide();
        $("#join-group").hide();
        $("#request-performance").css('display','flex');
        $("#request-lesson").hide();
        $("#calendar-view").hide();
        $("#create-session").hide();
        $("#create-concert").hide();
        $("#join-concert").hide();
        $("#connect-connector").hide();
    } else if(select_value === 'request_lesson') {
        $("#create_post").show();
        $("#session-box").hide();
        $(".public-event-invite-friends").hide();
        $("#event-button").hide();


        $("#connect-friends").hide();
        $("#join-group").hide();
        $("#request-performance").hide();
        $("#request-lesson").css('display','flex');
        $("#calendar-view").hide();
        $("#create-session").hide();
        $("#create-concert").hide();
        $("#join-concert").hide();
        $("#connect-connector").hide();
    } else if(select_value === 'make_yourself_available') {
        $("#create_post").show();
        $("#session-box").hide();
        $(".public-event-invite-friends").hide();
        $("#event-button").hide();


        $("#connect-friends").hide();
        $("#join-group").hide();
        $("#request-performance").hide();
        $("#request-lesson").hide();
        $("#calendar-view").css('display','flex');
        $("#create-session").hide();
        $("#create-concert").hide();
        $("#join-concert").hide();
        $("#connect-connector").hide();
    } else if(select_value === 'create_session') {
        $("#create_post").show();
        $("#session-box").hide();
        $(".public-event-invite-friends").hide();
        $("#event-button").hide();

         
        $("#connect-friends").hide();
        $("#join-group").hide();
        $("#request-performance").hide();
        $("#request-lesson").hide();
        $("#calendar-view").hide();
        $("#create-session").css('display','flex');
        $("#create-concert").hide();
        $("#join-concert").hide();
        $("#connect-connector").hide();
    } else if(select_value === 'create_concert') {
        $("#create_post").show();
        $("#session-box").hide();
        $("#public-event-invite-friends").hide();
        $("#event-button").hide();


        $("#connect-friends").hide();
        $("#join-group").hide();
        $("#request-performance").hide();
        $("#request-lesson").hide();
        $("#calendar-view").hide();
        $("#create-session").hide();
        $("#create-concert").css('display','flex');
        $("#join-concert").hide();
        $("#connect-connector").hide();
    } else if(select_value === 'join_concert') {
        $("#create_post").show();
        $("#session-box").hide();
        $(".public-event-invite-friends").hide();
        $("#event-button").hide();


        $("#connect-friends").hide();
        $("#join-group").hide();
        $("#request-performance").hide();
        $("#request-lesson").hide();
        $("#calendar-view").hide();
        $("#create-session").hide();
        $("#create-concert").hide();
        $("#join-concert").css('display','flex');
        $("#connect-connector").hide();
    } else {
        $("#create_post").hide();
        $("#session-box").show();
        $(".public-event-invite-friends").show();
        $("#event-button").show();

        $("#connect-friends").hide();
        $("#join-group").hide();
        $("#request-performance").hide();
        $("#request-lesson").hide();
        $("#calendar-view").hide();
        $("#create-session").hide();
        $("#create-concert").hide();
        $("#join-concert").hide();
        $("#connect-connector").hide();
        }

        $('#invite_open').change(function(){
            if($('#invite_open').is(":checked") == true){
                $(".date-format").attr("disabled", true)
            }else{
                $(".date-format").attr("disabled", false)
            }

        });
})
$(document).ready(function()
{
    $('.date-format').bootstrapMaterialDatePicker
    ({
        format: 'MM/DD/YYYY  HH:mm',
        minDate : new Date()

    });

    $.material.init()
});
<?php echo '</script'; ?>
>

                <?php }
}
