<!-- <link rel="stylesheet" href="./slide-banner.css"> -->
<div id="widgetSlideBanner">
    <!-- <ul class="slide-container">
        {%foreach $bannerList as $banner%}
        <li><a href="{%$banner->link%}"></a></li>
        {%/foreach%}
    </ul> -->
</div>

{%script%}
    require('./slide-banner.async.js').create({
        bannerList: {%json_encode($bannerList)%},
        container: $('#widgetSlideBanner')
    });
{%/script%}