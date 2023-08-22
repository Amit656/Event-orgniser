{include file='_head.tpl'}
{include file='_header.tpl'}

<!-- page content -->
<div class="container mt20 offcanvas">
    <div class="row">

        <!-- side panel -->
        <div class="col-md-4 col-lg-3 offcanvas-sidebar js_sticky-sidebar">
            {include file='_sidebar.tpl'}
        </div>
        <!-- side panel -->

        <!-- content panel -->
        <div class="col-md-8 col-lg-9 offcanvas-mainbar">

            <!-- tabs -->
            <div class="content-tabs rounded-sm shadow-sm clearfix">
                <ul>
                    <li {if $view == ""}class="active"{/if}>
                        <a href="{$system['system_url']}/events">{__("Discover")}</a>
                    </li>
                    <li {if $view == "manage"}class="active"{/if}>
                        <a href="{$system['system_url']}/events/manage">{__("My Events")}</a>
                    </li>
                    <li {if $view == "going"}class="active"{/if}>
                        <a href="{$system['system_url']}/events/going">{__("Going")}</a>
                    </li>
                    <li {if $view == "interested"}class="active"{/if}>
                        <a href="{$system['system_url']}/events/interested">{__("Interested")}</a>
                    </li>
                    <li {if $view == "invited"}class="active"{/if}>
                        <a href="{$system['system_url']}/events/invited">{__("Invited")}</a>
                    </li>                    
                </ul>
                {if $user->_data['user_group'] < 3 || $system['events_enabled']}
                    <div class="mt10 float-right">
                        {* <button class="btn btn-sm btn-primary d-none d-lg-block" data-toggle="modal" data-url="#create-event">
                            <i class="fa fa-plus-circle mr5"></i>{__("Create Event")}
                        </button> *}

                        <button class="btn btn-sm btn-primary d-none d-lg-block" id="create_connection">
                            <i class="fa fa-plus-circle mr5"></i>{__("Create Connection")}
                        </button>
                        <button class="btn btn-sm btn-icon btn-primary d-block d-lg-none" data-toggle="modal" data-url="#create-event">
                            <i class="fa fa-plus-circle"></i>
                        </button>
                    </div>
                {/if}
            </div>
            <!-- tabs -->

            <!-- content -->
            <div>
                <div class="card" id="event-board">
                    <div class="card-header with-icon">
                        <i class="fa fa-bullhorn mr10"></i>{__("Events")}
                    </div>
                    <form class="js_ajax-forms" data-url="pages_groups_events/create.php?do=create&type=event">
                        <div class="card-body">
                          <div class="row">
                            <div class="col-md-8">
                                <div class="form-group form-row">
                                    <div class="col-md-6" style="margin-bottom:30px;">
                                        <label class="form-control-label">
                                            {__("What do you want to do?")}
                                        </label>
                                        <select class="form-control" name="connection_type" id="get_connect_name">
                                            <option value="" class=""><a href="">{__("Connect My Connectors")}</a></option>
                                            <option value="connect_to_friend" class="">{__("Connect to Friend(s)")}</option>
                                            <option value="connect_to_group" class="">{__("Connect to Group")}</option>
                                            <option value="request_performance" class="">{__("Request Performance")}</option>
                                            <option value="request_lesson" class="">{__("Request Lesson")}</option>
                                            <option value="make_yourself_available" class="">{__("Make Yourself Available")}</option>
                                            <option value="create_session" class="">{__("Create Session")}</option>
                                            <option value="create_concert" class="">{__("Create Concert")}</option>
                                            <option value="join_concert" class="">{__("Join Concert")}</option>
                                        </select>
                                    </div>
                                    <div class="public-event-invite-friends">
                                        <div class="col-md-7" style="margin-left:10px">
                                            <label class="form-control-label">
                                                {__("Invite Friends, Groups")}
                                            </label>
                                            <input class="form-control" name="invite" placeholder="Friends, Groups Comma Delimited">
                                        </div>
                                        <div class="col-md-12" style="margin-left:20px; margin-top:20px;">
                                            <input type="checkbox" name="open" placeholder="Start Time">
                                            <label class="form-control-label">
                                                {__("Public Event")}
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4" id="session-box">
                                <div class="form-group form-row">
                                    <div class="col-md-12">
                                        <label class="form-control-label">
                                            {__("Session Name")}
                                        </label>
                                        <input class="form-control" name="session" placeholder="Session Name">
                                    </div>
                                </div>
                                <div class="form-group form-row">
                                    <div class="col-md-12">
                                        <input type="checkbox" name="open" placeholder="Start Time">
                                        <label class="form-control-label">
                                            {__("Always Open")}
                                        </label>
                                    </div>
                                </div>
                                 <div class="form-group form-row">
                                    <div class="col-md-12">
                                        <label class="form-control-label">
                                            {__("Start Time")}
                                        </label>
                                        <input class="form-control" name="start_time" placeholder="Start Time">
                                    </div>
                                </div>
                                 <div class="form-group form-row">
                                    <div class="col-md-12">
                                        <label class="form-control-label">
                                            {__("End Time")}
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
                            <button type="submit" class="btn btn-primary">{__("Next")}</button>
                        </div>
                        {include file='create_connection.tpl'}
                    </form>
                </div>
                 {if $events}
                    <ul class="row">
                        {foreach $events as $_event}

                            {include file='__feeds_event.tpl' _tpl='box'}
                        {/foreach}
                    </ul>

                    <!-- see-more -->
                    {if count($events) >= $system['max_results_even']}
                        <div class="alert alert-post see-more js_see-more" data-get="{$get}">
                            <span>{__("See More")}</span>
                            <div class="loader loader_small x-hidden"></div>
                        </div>
                    {/if}
                    <!-- see-more -->
                {else}
                    <p class="text-center text-muted">
                        {__("No events to show")}
                    </p
                {/if}
            </div>
            
            <!-- content -->

        </div>
        <!-- content panel -->

    </div>
</div>
<link rel="stylesheet" href="{$system['system_url']}/chosen_lib/chosen.css">
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

  <script src="{$system['system_url']}/chosen_lib/docsupport/jquery-3.2.1.min.js" type="text/javascript"></script>
  <script src="{$system['system_url']}/chosen_lib/chosen.jquery.js" type="text/javascript"></script>
  <script src="{$system['system_url']}/chosen_lib/docsupport/init.js" type="text/javascript" charset="utf-8"></script>
{include file='_footer.tpl'}

<!-- date time picker includes -->
<link rel="stylesheet" href="{$system['system_url']}/date_time_picker/css/bootstrap-material-datetimepicker.css" />
<link href='http://fonts.googleapis.com/css?family=Roboto:400,500' rel='stylesheet' type='text/css'>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-material-design/0.5.10/js/ripples.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-material-design/0.5.10/js/material.min.js"></script>
<script type="text/javascript" src="https://rawgit.com/FezVrasta/bootstrap-material-design/master/dist/js/material.min.js"></script>
<script type="text/javascript" src="http://momentjs.com/downloads/moment-with-locales.min.js"></script>
<script type="text/javascript" src="{$system['system_url']}/date_time_picker/js/bootstrap-material-datetimepicker.js"></script>