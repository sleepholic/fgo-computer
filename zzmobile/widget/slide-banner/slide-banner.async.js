module.exports = Pagelet.extend({
    el: '#widgetSlideBanner',
    init: function(spec, config) {

        this.banners = [];
        this.currIndex = 0;
        this.slideTimeout = false;
        this.isPlaying = false;
        this.duration = 1000;
        this.imgBox = null;
        this.slideBox = null;
        this.imgH = 0;

        var conf = config || {};

        this.banners = spec||[{
            link:"#",
            bgcolor:"#fff",
            img:"/res/img/banner/banner_01.jpg"
        }];

        var mainCon = $("<div>",{'class':'main-banner'});

        this.bannerContainer = conf.container || $('body');
        this.bannerContainer.html(mainCon);

        //绘制框架
        mainCon.append('<div class="banner-bg"><ul class="banner-bg-img"></ul></div>');
        mainCon.append('<div class="banner-bg-slide"></div>');

        this.imgBox = mainCon.find(".banner-bg-img");
        this.slideBox = mainCon.find(".banner-bg-slide");

        this.imgH = conf.height || 300;
        //设置banner容器高度
        this.imgBox.parent().parent().height(imgH);
        this._render();
        this._bind();
        this._play();
        //设置item高度
        this.imgBox.find("li").height(imgH);
        this.imgBox.find("li a").height(imgH);
    },
    _render: function(){
        var imgHtml=[],
            slideHtml=[];
        var that = this;
        $.each(that.banners, function(i,item){
            var isLink = _hasLink(item.link);
            imgHtml[i] = [
                '<li'+(i==0 ? ' class="img-on"':'')+' style="background:url('+item.img+') no-repeat center center '+item.bgcolor+'">',
                    isLink ? '<a href="'+item.link+'" target="_blank"></a>':'',
                '</li>'
            ].join('');

            slideHtml[i] = '<a class="banner-bg-item'+(i==0?' item-on':'')+'" data-index="'+i+'" href="#" onclick="return false;"></a>';
        });
        that.imgBox.html(imgHtml.join(''));
        that.slideBox.html(slideHtml.join(''))
        if(that.banners.length<2){
            that.slideBox.hide();
        }
        that._goto(this.currIndex);
    },
    _hasLink: function(str){
        if(typeof str != "string" || str == "#"){
            return false;
        }else{
            return true;
        }
    },
    _bind: function(){
        var that = this;
        this.slideBox.find("a").on("mouseenter click",function(){
            clearTimeout(slideTimeout);

            var index = $(this).attr("data-index");
            if(index){
                that._goto(index|0);
            }

            that._play();  
        })

        $("body").on("keydown",function(e){
            if(e.keyCode == 37){
                that._goto(this.currIndex-1);
            }else if(e.keyCode == 39){
                that._goto(this.currIndex+1);
            }
        })
    },
    _call: function(){
        this._goto(this.currIndex+1);
        this._play();
    },
    _play: function(){
        var that = this;
        clearTimeout(slideTimeout);
        slideTimeout = setTimeout(function(){
            that._call();
        },5000);
    },
    _goto: function(index){
        if(this.isPlaying) return;

        index = (index+this.banners.length) % this.banners.length;

        this.currIndex = index;

        var currBanner = imgBox.find("li.img-on");
        var nextBanner = imgBox.find("li").eq(index);
        if(currBanner[0] == nextBanner[0]) return;

        this.isPlaying = true;
        nextBanner.css({
            opacity: 0
        }).show()
        this.slideBox.find("a").removeClass("item-on").eq(index).addClass("item-on");

        currBanner.animate({
            opacity: 0
        },{
            step:function(p){
                nextBanner.css({
                    opacity : 1-p
                })
            },
            complete : function(){
                currBanner.hide().removeClass("img-on");
                nextBanner.addClass("img-on");
                this.isPlaying = false;
            }
        })
    }
});