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
                                    {__("Notifications")}
                                </div>
                                <div class="card-body">
                                    <ul>
                                        {foreach $user->_data['notifications'] as $notification}
                                        {include file='__feeds_notification.tpl'}
                                        {/foreach}
                                    </ul>

                                    {if count($user->_data['notifications']) >= $system['max_results']}
                                        <!-- see-more -->
                                        <div class="alert alert-info see-more js_see-more" data-get="notifications">
                                            <span>{__("See More")}</span>
                                            <div class="loader loader_small x-hidden"></div>
                                        </div>
                                        <!-- see-more -->
                                    {/if}

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

{include file='_footer.tpl'}