
<div class="head">
    {% if user is defined %}
        {{ user.username }}
    {% else %}
        {{ link_to(['for': 'login'], '<img src="/img/soc.icon/facebook_u42_mouseOver.png">') }}
        {{ link_to(['for': 'login'], '<img src="/img/soc.icon/google_u40_mouseOver.png">') }}
        {{ link_to(['for': 'login'], '<img src="/img/soc.icon/linkedin_u44_mouseOver.png">') }}
        {{ link_to(['for': 'login'], '<img src="/img/soc.icon/vk_u46_mouseOver.png">') }}
    {% endif %}
</div>
