
<div id="widgetArticleBlock">
    <div>
        <h3><a href="{%$morelink%}">{%$title%}</a></h3>
    </div>
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
</div>