
<div id="widgetArticleBlock">
    {%if !empty($title)%}
    <h3><a href="{%$morelink%}">{%$title%} &gt;&gt;</a></h3>
    {%/if%}
    <ul>
        {%foreach $articles as $item%}
        <li>
            <a href="{%$item.link%}">
                <h4>{%$item.title%}</h4>
                <p>{%$item.desc%}</p>
                <p>{%$item.date%}</p>
            </a>
        </li>
        {%/foreach%}
    </ul>
    {%if !empty($subtitle)%}
    <div>
        {%foreach $subtitle as $item%}
        <h3><a href="{%$item.link%}">{%$item.title%}</a></h3>
        {%/foreach%}
    </div>
    {%/if%}
</div>