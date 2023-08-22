<!-- footer links -->
<div class="container">
	<div class="row footer {if $page == 'index' && !$user->_logged_in}border-top-0{/if}">
		<div class="col-sm-6">
			&copy; {'Y'|date} {$system['system_title']} · <span class="text-link" data-toggle="modal" data-url="#translator">{$system['language']['title']}</span>
		</div>

		<div class="col-sm-6 links">
			{if count($static_pages) > 0}
				{foreach $static_pages as $static_page}
					<a href="{$system['system_url']}/static/{$static_page['page_url']}">
						{__($static_page['page_title'])}
					</a>{if !$static_page@last} · {/if}
				{/foreach}
			{/if}
			{if $system['contact_enabled']}
				 · 
				<a href="{$system['system_url']}/contacts">
					{__("Contacts")}
				</a>
			{/if}
			{if $system['directory_enabled']}
				 · 
				<a href="{$system['system_url']}/directory">
					{__("Directory")}
				</a>
			{/if}
			{if $system['market_enabled']}
                 · 
                <a href="{$system['system_url']}/market">
                    {__("Market")}
                </a>
            {/if}
            {if $system['forums_enabled']}
                 · 
                <a href="{$system['system_url']}/forums">
                    {__("Forums")}
                </a>
            {/if}
		</div>
	</div>
</div>
<!-- footer links -->