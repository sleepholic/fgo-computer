{%extends file="zzmobile/page/layout.tpl"%}
{%block name="block_main"%}
    {%widget
        name="zzmobile:widget/top-bar/top-bar.tpl"
        pre="首页"
        prelink="/index"
        title="站长学院"
        user=$user
    %}
    {%foreach $lessons as $lesson%}
        {%widget
            name="zzmobile:widget/lesson/lesson.tpl"
            title=$lesson.title
            desc=$lesson.desc
            sections=$lesson.sections
        %}
    {%/foreach%}
{%/block%}