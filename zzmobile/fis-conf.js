fis.config.merge({
    namespace : 'zzmobile',
    pack : {
        'static/pkg/aio.css' : 'static/style/**.css',
        'static/pkg/aio.js' : 'static/lib/**.js'
    }
});
fis.config.set('modules.parser', {
    sass : 'sass',
    scss: 'sass'
});

fis.config.set('roadmap.ext', {
    sass: 'css',
    scss: 'css'
});
fis.config.set('settings.parser.sass', {
    // 加入文件查找目录
    include_paths: ['static/style', 'widget']
});
//项目排除掉_xxx.scss，这些属于框架文件，不用关心
fis.config.set('project.exclude', '**/_*.scss');
//scss后缀的文件，用fis-parser-sass插件编译
fis.config.set('modules.parser.scss', 'sass');
//scss文件产出为css文件
fis.config.set('roadmap.ext.scss', 'css');