{if $_registration}
	{foreach $_custom_fields as $custom_field}
        <div class="form-group">
            <label class="form-control-label">{__($custom_field['label'])}</label>
            {if $custom_field['type'] == "textbox"}
                <input name="fld_{$custom_field['field_id']}" type="text" class="form-control" placeholder="{__($custom_field['label'])}">
            {elseif $custom_field['type'] == "textarea"}
                <textarea name="fld_{$custom_field['field_id']}" class="form-control" placeholder="{__($custom_field['label'])}"></textarea>
            {elseif $custom_field['type'] == "selectbox"}
                <select name="fld_{$custom_field['field_id']}" class="form-control">
                	<option selected value="none">{__("Select")} {__($custom_field['label'])}</option>
                    {foreach $custom_field['options'] as $id => $value}
                        <option {if $custom_field['value'] == $value}selected{/if} value="{$id}">{__($value)}</option>
                    {/foreach}
                </select>
            {/if}
            <span class="form-text">
                {__($custom_field['description'])}
            </span>
        </div>
    {/foreach}
{else}
	{foreach $_custom_fields as $custom_field}
	    <div class="form-group">
	    	<label class="form-control-label">{__($custom_field['label'])}</label>
            {if $custom_field['type'] == "textbox"}
                <input type="text" name="fld_{$custom_field['field_id']}" class="form-control" value="{$custom_field['value']}">
            {elseif $custom_field['type'] == "textarea"}
                <textarea name="fld_{$custom_field['field_id']}" class="form-control">{$custom_field['value']}</textarea>
            {elseif $custom_field['type'] == "selectbox"}
                <select name="fld_{$custom_field['field_id']}" class="form-control">
                    <option {if $custom_field['value'] == ""}selected{/if} value="none">{__("Select")} {__($custom_field['label'])}</option>
                    {foreach $custom_field['options'] as $id => $value}
                        <option {if $custom_field['value'] == $value}selected{/if} value="{$id}">{__($value)}</option>
                    {/foreach}
                </select>
            {/if}
            <span class="form-text">
                {__($custom_field['description'])}
            </span>
	    </div>
	{/foreach}
{/if}