<?php
/* Smarty version 3.1.33, created on 2020-03-19 11:10:48
  from '/var/www/html/qrsmusic/content/themes/default/templates/create_post.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e735338230ce4_97006086',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '74119b40fe606acfa06d6b7bcd0927062725042a' => 
    array (
      0 => '/var/www/html/qrsmusic/content/themes/default/templates/create_post.tpl',
      1 => 1584616222,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5e735338230ce4_97006086 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="create_post" id="create_post">
    <div class="container">
                <div class="row event-view-page-box connect-friends" id="connect-friends" style="margin-top: -25px;" >
            <div class="col-md-4" style="padding-right:4px;">
                <div class="form-group page-box">
                    <label for="invite_friend" class="label-update">Invite Friend(s)</label>
                    <input type="text" class="form-control" id="invite_friend" name="invite_friend">
                </div>
            </div>
            <div class= "col-md-8">
              <p class="alert-message">
                Comma Delimited-Friend List.
              </p>
            </div>
            <div class="col-md-12 text-center" style="height:fit-content; margin-top:30%;">
               <input type="submit"  class="btn btn-primary" value="Invite">
            </div>
        </div>

                <div class="row event-view-page-box join-group" id="join-group" style="margin-top:-25px" >
            <div class= "col-md-4">
                <div class="form-group page-box">
                    <label for="join_group" class="label-update">Join Group</label>
                    <input type="text" class="form-control" id="join_group" name="join_group">
                </div>
            </div>
            <div class= "col-md-8">
              <p class="alert-message">
              </p>
            </div>
            <div class="col-md-12 text-center" style="height:fit-content; margin-top:20%;">
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
})
<?php echo '</script'; ?>
>

                <?php }
}
