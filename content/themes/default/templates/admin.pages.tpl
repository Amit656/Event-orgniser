<div class="card">
    <div class="card-header with-icon">
        {if $sub_view == "edit_page"}
            <div class="float-right">
                <a href="{$system['system_url']}/admincp/pages" class="btn btn-sm btn-light">
                    <i class="fa fa-arrow-circle-left mr5"></i>{__("Go Back")}
                </a>
                <a target="_blank" href="{$system['system_url']}/pages/{$data['page_name']}" class="btn btn-sm btn-info">
                    <i class="fa fa-tv mr5"></i>{__("View Page")}
                </a>
            </div>
        {elseif $sub_view == "categories"}
            <div class="float-right">
                <a href="{$system['system_url']}/admincp/pages/add_category" class="btn btn-sm btn-primary">
                    <i class="fa fa-plus mr5"></i>{__("Add New Category")}
                </a>
            </div>
        {elseif $sub_view == "add_category" || $sub_view == "edit_category"}
            <div class="float-right">
                <a href="{$system['system_url']}/admincp/pages/categories" class="btn btn-sm btn-light">
                    <i class="fa fa-arrow-circle-left mr5"></i>{__("Go Back")}
                </a>
            </div>
        {/if}
        <i class="fa fa-flag mr10"></i>{__("Pages")}
        {if $sub_view == "edit_page"} &rsaquo; {$data['page_title']}{/if}
        {if $sub_view == "categories"} &rsaquo; {__("Categories")}{/if}
        {if $sub_view == "add_category"} &rsaquo; {__("Categories")} &rsaquo; {__("Add New Category")}{/if}
        {if $sub_view == "edit_category"} &rsaquo; {__("Categories")} &rsaquo; {$data['category_name']}{/if}
    </div>

    {if $sub_view == ""}

        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover js_dataTable">
                    <thead>
                        <tr>
                            <th>{__("ID")}</th>
                            <th>{__("Page")}</th>
                            <th>{__("Admin")}</th>
                            <th>{__("Likes")}</th>
                            <th>{__("Verified")}</th>
                            <th>{__("Actions")}</th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach $rows as $row}
                            <tr>
                                <td>
                                    <a href="{$system['system_url']}/pages/{$row['page_name']}" target="_blank">
                                        {$row['page_id']}
                                    </a>
                                </td>
                                <td>
                                    <a target="_blank" href="{$system['system_url']}/pages/{$row['page_name']}">
                                        <img class="tbl-image" src="{$row['page_picture']}">
                                        {$row['page_title']}
                                    </a>
                                </td>
                                <td>
                                    <a target="_blank" href="{$system['system_url']}/{$row['user_name']}">
                                        <img class="tbl-image" src="{$row['user_picture']}">
                                        {$row['user_firstname']} {$row['user_lastname']}
                                    </a>
                                </td>
                                <td>{$row['page_likes']}</td>
                                <td>
                                    {if $row['page_verified']}
                                        <span class="badge badge-pill badge-lg badge-success">{__("Yes")}</span>
                                    {else}
                                        <span class="badge badge-pill badge-lg badge-danger">{__("No")}</span>
                                    {/if}
                                </td>
                                <td>
                                    <a data-toggle="tooltip" data-placement="top" title='{__("Edit")}' href="{$system['system_url']}/admincp/pages/edit_page/{$row['page_id']}" class="btn btn-sm btn-icon btn-rounded btn-primary">
                                        <i class="fa fa-pencil-alt"></i>
                                    </a>
                                    <button data-toggle="tooltip" data-placement="top" title='{__("Delete")}' class="btn btn-sm btn-icon btn-rounded btn-danger js_admin-deleter" data-handle="page" data-id="{$row['page_id']}">
                                        <i class="fa fa-trash-alt"></i>
                                    </button>
                                </td>
                            </tr>
                        {/foreach}
                    </tbody>
                </table>
            </div>
        </div>

    {elseif $sub_view == "edit_page"}

        <form class="js_ajax-forms " data-url="admin/pages.php?do=edit_page&id={$data['page_id']}">
            <div class="card-body">
                <div class="row">
                    <div class="col-12 col-md-2 text-center mb20">
                        <img class="img-fluid img-thumbnail rounded-circle" src="{$data['page_picture']}">
                    </div>
                    <div class="col-12 col-md-10 mb20">
                        <ul class="list-group">
                            <li class="list-group-item">
                                <span class="float-right badge badge-lg badge-pill badge-secondary">{$data['page_id']}</span>
                                {__("Page ID")}
                            </li>
                            <li class="list-group-item">
                                <span class="float-right badge badge-lg badge-pill badge-secondary">{$data['page_likes']}</span>
                                {__("Likes")}
                            </li>
                        </ul>
                    </div>
                </div>
                
                <!-- tabs nav -->
                <ul class="nav nav-tabs mb20">
                    <li class="nav-item">
                        <a class="nav-link active" href="#basic" data-toggle="tab">
                            <i class="fa fa-cog fa-fw mr5"></i>{__("Page Info")}
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
                                {__("Admin")}
                            </label>
                            <div class="col-md-9">
                                <a target="_blank" href="{$system['system_url']}/{$data['user_name']}">
                                    <img class="tbl-image" src="{$data['user_picture']}">
                                    {$data['user_firstname']} {$data['user_lastname']}
                                </a>
                                <a target="_blank" data-toggle="tooltip" data-placement="top" title='{__("Edit")}' href="{$system['system_url']}/admincp/users/edit/{$data['user_id']}" class="btn btn-sm btn-light btn-icon btn-rounded ml10">
                                    <i class="fa fa-pencil-alt"></i>
                                </a>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                {__("Verified Page")}
                            </label>
                            <div class="col-md-9">
                                <label class="switch" for="page_verified">
                                    <input type="checkbox" name="page_verified" id="page_verified" {if $data['page_verified']}checked{/if}>
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                {__("Name Your Page")}
                            </label>
                            <div class="col-md-9">
                                <input class="form-control" name="title" value="{$data['page_title']}">
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                {__("Web Address")}
                            </label>
                            <div class="col-md-9">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text d-none d-sm-block">{$system['system_url']}/pages/</span>
                                    </div>
                                    <input type="text" class="form-control" name="username" id="username" value="{$data['page_name']}">
                                </div>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                {__("Category")}
                            </label>
                            <div class="col-md-9">
                                <select class="form-control" name="category">
                                    {foreach $data['categories'] as $category}
                                        <option {if $data['page_category'] == $category['category_id']}selected{/if} value="{$category['category_id']}">{__($category['category_name'])}</option>
                                    {/foreach}
                                </select>
                            </div>
                        </div>

                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                {__("About")}
                            </label>
                            <div class="col-md-9">
                                <textarea class="form-control" name="page_description">{$data['page_description']}</textarea>
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
                <button type="submit" class="btn btn-primary">{__("Save Changes")}</button>
            </div>
        </form>

    {elseif $sub_view == "categories"}

        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover js_dataTable">
                    <thead>
                        <tr>
                            <th>{__("ID")}</th>
                            <th>{__("Title")}</th>
                            <th>{__("Actions")}</th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach $rows as $row}
                            <tr>
                                <td>{$row['category_id']}</td>
                                <td>{$row['category_name']}</td>
                                <td>
                                    <a data-toggle="tooltip" data-placement="top" title='{__("Edit")}' href="{$system['system_url']}/admincp/pages/edit_category/{$row['category_id']}" class="btn btn-sm btn-icon btn-rounded btn-primary">
                                        <i class="fa fa-pencil-alt"></i>
                                    </a>
                                    <button data-toggle="tooltip" data-placement="top" title='{__("Delete")}' class="btn btn-sm btn-icon btn-rounded btn-danger js_admin-deleter" data-handle="page_category" data-id="{$row['category_id']}">
                                        <i class="fa fa-trash-alt"></i>
                                    </button>
                                </td>
                            </tr>
                        {/foreach}
                    </tbody>
                </table>
            </div>
        </div>

    {elseif $sub_view == "add_category"}
        
        <form class="js_ajax-forms " data-url="admin/pages.php?do=add_category">
            <div class="card-body">
                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        {__("Name")}
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
                <button type="submit" class="btn btn-primary">{__("Save Changes")}</button>
            </div>
        </form>

    {elseif $sub_view == "edit_category"}

        <form class="js_ajax-forms " data-url="admin/pages.php?do=edit_category&id={$data['category_id']}">
            <div class="card-body">
                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        {__("Name")}
                    </label>
                    <div class="col-md-9">
                        <input class="form-control" name="category_name" value="{$data['category_name']}">
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
                <button type="submit" class="btn btn-primary">{__("Save Changes")}</button>
            </div>
        </form>

    {/if}
</div>