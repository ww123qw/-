$(window).resize(function() {
    $('.ycamk').height($(window).height());
});
$('.ycamk').each(function() {
    $(this).height($(window).height());
    $(this).css({
        left: -$(this).width()
    });
});
$('.ycamk .wall ul').each(function() {
    $(this).height($(window).height()-115);
   
});
$('.sort').each(function() {
    $(this).height($(window).height()-115);
   
});
$('.videos').each(function() {
    $(this).height($(window).height());
   
});
$('.ycamk .end').click(function() {
    $(this).parent('.ycamk').animate({
        left: -900
    });
    $('.mues li').removeClass();
});
$('.mues li').click(function() {
    var awidth = $('.ycamk').eq($(this).index()).width();
    $(this).addClass('add').siblings().removeClass();
    $('.ycamk').eq($(this).index()).animate({
        left: 0
    }).siblings('.ycamk').animate({
        left: -900
    });
});

$('.organi ul').each(function() {
    $(this).find('li').eq(0).css({
        background: 'none'
    });
});
$('.shqk ul li').each(function() {
    if ($(this).index() % 2 == 0) {
        $(this).addClass('fl')
    } else {
        $(this).addClass('fr')
    }
});

$('.jcnav ul li').on('click',function() {
    var othis = $(this).index();
    var navclength = $('.navcon li').length;
    //alert(navclength);
    //alert(othis);
    if (othis <= navclength) {
        console.log('true! 详情长度为' + navclength + '　当前取的索引为' + othis);
        $('.navcon').css({
            'margin-top': -$('.navcon').height() / 2,
            'margin-left': -$('.navcon').width() / 2
        }).animate({
            opacity: 1,
            'z-index': 1
        },
        300);
        $('.navcon li').eq(othis).show().siblings().hide();
    } else {
        console.log('false! 详情长度为' + navclength + '　当前取的索引为' + othis);
    }

    /*$('.navcon li span').click(function() {
			$('.navcon').animate({
				opacity: 0
			},300);
		});*/
    $('.navcon li span').on('click',
    function() {
        $('.navcon').animate({
            opacity: 0,
            'z-index':-9
        },
        300);
    });

});

$('.nearfuture ul li .xqi a').on('click',function() {
    //var othis = $(this).eq();
    var othis = $('.nearfuture ul li .xqi a').index(this);
    var navclength = $('.nearcons li').length;
    //alert(navclength);
    //alert(othis);
    if (othis < navclength) {
        //alert(othis);
        console.log('true! 详情长度为' + navclength + '　当前取的索引为' + othis);
        $('.nearcons').css({
            'margin-top': -$('.nearcons').height() / 2,
            'margin-left': -$('.nearcons').width() / 2
        }).fadeIn();
        $('.nearcons li').eq(othis).show().siblings().hide();
    } else {
        console.log('false! 详情长度为' + navclength + '　当前取的索引为' + othis);
    }
    $('.nearcons li h5 span').on('click',function() {
        $('.nearcons').fadeOut();
    });

});

$('.yuandian').hover(function() {
    $(this).children('.chom').fadeIn(1000);
},
function() {
    $(this).children('.chom').hide();
});

$('.dsdzsyshu ul li').mouseover(function() {
    $(this).children('.xxshuju').show().siblings('.xxshuju').hide();
});
$('.dsdzsyshu').mouseout(function(){
    $('.xxshuju').hide();
});



$('#Map area').on('click',function() {
       //var oattr = $(this).attr('class');
    //alert($('.dituku').eq($(this).index()).attr('class'));
    $('.dituku').eq($(this).index()).css({
        'margin-top': -$('.dituku').height() / 2,
        'margin-left': -$('.dituku').width() / 2,
        'z-index':1
    }).show().siblings('.dituku').css({
            'z-index':-9
        }).hide();

     $('.dituku h5 span').on('click',function() {
        $('.dituku').fadeOut();
    });
});

$('#Mafefs li').on('click',function() {
       //var oattr = $(this).attr('class');
    //alert($('.dituku').eq($(this).index()).attr('class'));
    $('.ditulloe').eq($(this).index()).css({
        'margin-top': -$('.ditulloe').height() / 2,
        'margin-left': -$('.ditulloe').width() / 2,
        'z-index':1
    }).show().siblings('.ditulloe').css({
            'z-index':-9
        }).hide();

     $('.ditulloe .dituyi span').on('click',function() {
        $('.ditulloe').fadeOut();
    });
});


$('.streetbuildingmap ul li').on('mouseover',function() {
	
    var othis = $(this).index();

     console.log(othis);
    var navclength = $('.yuandian').length;
    if (othis < navclength) {
        //alert(othis);
        console.log('true! 详情长度为' + navclength + '　当前取的索引为' + othis);
        $('.yuandian').eq(othis).addClass('flash').siblings('.yuandian').removeClass('flash');
        $('.streetbuildingmap ul').mouseout(function(){
            $('.yuandian').removeClass('flash');
        });
    } else {
        console.log('false! 详情长度为' + navclength + '　当前取的索引为' + othis);
    }

});

$('.street').width($('.street').text().length*30+20);