<div id="widgetSlideBanner">
    <ul class="slide-container">
        {%foreach $bannerList as $banner%}
        <li><a href="{%$banner->link%}"></a></li>
        {%/foreach%}
    </ul>
</div>
{%script%}
    require.async('./slide-banner.async.js', function(sb){
        sb.init();
    });
{%/script%}