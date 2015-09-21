{%extends file="zzmobile/page/layout.tpl"%}
{%block name="block_head_static"%}

{%/block%}
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
    {%foreach $articleBlock as $item%}
        {%widget
            name="zzmobile:widget/article-block/article-block.tpl"
            articles=$item.articles
            title=$item.title
            morelink=$item.morelink
            category=$item.category
        %}
    {%/foreach%}
{%/block%}