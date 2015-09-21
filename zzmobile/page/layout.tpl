<!DOCTYPE html>
{%* 使用html插件替换普通html标签，同时注册JS组件化库 *%}
{%html framework="zzmobile:static/lib/mod.js" class="expanded"%}
{%head%}
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width">
    <meta content="{%$description%}" name="description">
    <title>{%block name="block_title"%}百度站长平台_让网站更具价值{%/block%}</title>
    <meta name="description" content="{%block name='description'%}全球最大的面向中文互联网管理者、移动开发者、创业者的搜索流量管理的官方平台。提供有助于搜索引擎收录的工具、SEO建议、API接口、多端适配服务的能力等。{%/block%}" />
    {%block name="keywords"%}{%/block%}
    {%block name="block_head_static"%}{%/block%}
    {%require name="zzmobile:static/style/base.scss"%}
    {%require name="zzmobile:static/lib/jquery.js"%}
    {%require name="zzmobile:static/lib/pagelet.js"%}
    {%require name="zzmobile:static/lib/listener.js"%}
{%/head%}
{%* 使用body插件替换body标签，主要为可控制加载JS资源 *%}
{%body%}
{%block name="content"%}
    {%* 通过widget插件加载模块化页面片段，name属性对应文件路径,模块名:文件目录路径 *%}
    
    <div class="layout-main">
        {%block name="block_main"%}
        {%/block%}
    </div>

{%/block%}
{%/body%}
{%/html%}
