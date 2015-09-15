<link rel="stylesheet" href="./slide-banner.css">
<div id="widgetSlideBanner">
    <!-- <ul class="slide-container">
        {%foreach $bannerList as $banner%}
        <li><a href="{%$banner->link%}"></a></li>
        {%/foreach%}
    </ul> -->
    <div class="main-banner">
    <div class="banner-bg">
        <ul class="banner-bg-img"></ul>
    </div>
    <div class="banner-bg-slide"></div>
</div>
</div>

{%script%}

    require('./slide-banner.async.js').create({
        bannerList: {%json_encode($bannerList)%}
        });
{%/script%}