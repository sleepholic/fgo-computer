{%*
    站长学院官方课程模块
    title string 课程标题
    desc string 课程描述
    section array 章节列表
        key => item 章节名 => 章节内容
            link 章节链接
            date 章节更新时间
*%}
<div id="widgetLesson">
    {%if !empty($title)%}
    <h3><a href="{%$morelink%}">{%$title%} &gt;&gt;</a></h3>
    {%/if%}
    <div>{%$desc%}</div>
    <ul>
        {%foreach $sections as $key => $item%}
        <li>
            <a href="{%$item.link%}">{%$key%} <span>更新于{%$item.date%} &gt;</span></a>
        </li>
        {%/foreach%}
    </ul>
</div>