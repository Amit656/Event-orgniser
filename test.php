
<div>
    <div class="card">
        <div class="card-header with-icon">
            <i class="fa fa-bullhorn mr10"></i>{__("Events")}
        </div>
        <form class="js_ajax-forms " data-url="admin/announcements.php?do=add">
            <div class="card-body">
                <div class="col-md-6">
                    <div class="form-group form-row">
                        <div class="col-md-6">
                            <label class="form-control-label">
                                {__("What do you want to do?")}
                            </label>
                            <select class="form-control" name="type">
                                <option value="" class="">{__("Success")}</option>
                                <option value="" class="">{__("Warning")}</option>
                                <option value="" class="">{__("Danger")}</option>
                                <option value="" class="">{__("Info")}</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group form-row">
                        <div class="col-md-6">
                            <label class="form-control-label">
                                {__("What do you want to do?")}
                            </label>
                            <select class="form-control" name="type">
                                <option value="" class="">{__("Success")}</option>
                                <option value="" class="">{__("Warning")}</option>
                                <option value="" class="">{__("Danger")}</option>
                                <option value="" class="">{__("Info")}</option>
                            </select>
                        </div>
                    </div>
                </div>
                <!-- success -->
                <div class="alert alert-success mb0 x-hidden"></div>
                <!-- success -->

                <!-- error -->
                <div class="alert alert-danger mb0 x-hidden"></div>
                <!-- error -->
                <div class="card-footer text-center">
                    <button type="submit" class="btn btn-primary">{__("Next")}</button>
                </div>
            </div>
        </form>
    </div>
</div>
