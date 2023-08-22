{if $system['social_share_enabled']}
    <div class="post-sharing x-hidden">
        <span class="btn btn-sm btn-rounded btn-social-icon btn-light js_share" data-id="{$post['post_id']}">
            <i class="fa fa-share-square"></i>
        </span>
        <a href="http://www.facebook.com/sharer.php?u={$system['system_url']}/posts/{$post['post_id']}" class="btn btn-sm btn-rounded btn-social-icon btn-facebook" target="_blank">
            <i class="fab fa-facebook-f"></i>
        </a>
        <a href="https://twitter.com/intent/tweet?url={$system['system_url']}/posts/{$post['post_id']}" class="btn btn-sm btn-rounded btn-social-icon btn-rounded btn-twitter" target="_blank">
            <i class="fab fa-twitter"></i>
        </a>
        <a href="https://vk.com/share.php?url={$system['system_url']}/posts/{$post['post_id']}" class="btn btn-sm btn-rounded btn-social-icon btn-vk" target="_blank">
            <i class="fab fa-vk"></i>
        </a>
        <a href="https://www.linkedin.com/shareArticle?mini=true&url={$system['system_url']}/posts/{$post['post_id']}" class="btn btn-sm btn-rounded btn-social-icon btn-linkedin" target="_blank">
            <i class="fab fa-linkedin"></i>
        </a>
        <a href="https://api.whatsapp.com/send?text={$system['system_url']}/posts/{$post['post_id']}" class="btn btn-sm btn-rounded btn-social-icon btn-whatsapp" target="_blank">
            <i class="fab fa-whatsapp"></i>
        </a>
        <a href="https://reddit.com/submit?url={$system['system_url']}/posts/{$post['post_id']}" class="btn btn-sm btn-rounded btn-social-icon btn-reddit" target="_blank">
            <i class="fab fa-reddit"></i>
        </a>
        <a href="https://pinterest.com/pin/create/button/?url={$system['system_url']}/posts/{$post['post_id']}" class="btn btn-sm btn-rounded btn-social-icon btn-pinterest" target="_blank">
            <i class="fab fa-pinterest"></i>
        </a>
    </div>
{/if}