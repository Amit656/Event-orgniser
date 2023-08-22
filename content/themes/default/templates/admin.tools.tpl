<div class="card">
    <div class="card-header with-icon">
        <i class="fa fa-toolbox mr10"></i>{__("Tools")}
        {if $sub_view == "faker"} &rsaquo; {__("Fake Users Generator")}{/if}
    </div>

    {if $sub_view == "faker"}

        <form class="js_ajax-forms " data-url="admin/tools.php?do=faker">
            <div class="card-body">
                <div class="form-table-row">
                    <div>
                        <div class="form-control-label h6">{__("Random Pictures")}</div>
                        <div class="form-text d-none d-sm-block">{__("Profile pictures will be generated randomly and may be dublicated")}</div>
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
                        {__("Number of Users")}
                    </label>
                    <div class="col-md-9">
                        <input type="number" class="form-control" name="users_num" value="10">
                        <span class="form-text">
                            {__("How many users you want to generate (Maximum is 1000 per request)")}
                        </span>
                    </div>
                </div>

                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        {__("Password")}
                    </label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" name="default_password">
                        <span class="form-text">
                            {__("This password will be used for all generated accounts (Default is 123456789)")}
                        </span>
                    </div>
                </div>

                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        {__("Names Language")}
                    </label>
                    <div class="col-md-9">
                        <select class="form-control" name="language">
                            {foreach $system['languages'] as $language}
                                {$parts = explode('_', $language['code'])}
                                <option {if $system['default_language']['language_id'] == $language['language_id']}selected{/if} value="{$parts[0]}_{strtoupper($parts[1])}">{$language['title']}</option>
                            {/foreach}
                        </select>
                        <span class="form-text">
                            {__("Select the language of generated account names")}
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
                <button type="submit" class="btn btn-danger"><i class="fa fa-bolt mr10"></i>{__("Generate")}</button>
            </div>
        </form>

    {/if}
</div>