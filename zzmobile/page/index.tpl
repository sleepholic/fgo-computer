{%extends file="zzmobile/page/layout.tpl"%}

{%block name="block_main"%}
    {%widget
        name="zzmobile:widget/header/header.tpl"
    %}
    {%widget
        name="zzmobile:widget/slide-banner/slide-banner.tpl"
        bannerList=$bannerList
    %}
    {%widget
        name="zzmobile:widget/nav/nav.tpl"
    %}
    {%widget
        name="zzmobile:widget/article-block/article-block.tpl"
        articles=$articles.news
        title="产品动态"
        morelink=""
    %}
    {%widget
        name="zzmobile:widget/article-block/article-block.tpl"
        articles=$articles.academy
        title="站长学院"
        morelink="academy/academy"
    %}
    {%widget
        name="zzmobile:widget/article-block/article-block.tpl"
        articles=$articles.salon
        title="活动沙龙"
        morelink=""
    %}
{%/block%}