{%extends file="zzmobile/page/layout.tpl"%}
{%block name="block_head_static"%}
{%require name="zzmobile:static/pkg/css/index.css"%}
{%/block%}
{%block name="block_main"%}
    {%widget
        name="zzmobile:widget/slide-banner/slide-banner.tpl"
    %}
    {%widget
        name="zzmobile:widget/nav/nav.tpl"
    %}
{%/block%}