<%@ page language="java" contentType="text/html;"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    <%
    String path = request.getContextPath();
    %>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta charset="utf-8" />
    <title></title>
    <link rel="stylesheet" type="text/css" href="<%=path %>/asset/cssdw/reset.css" />
    <link href="<%=path %>/asset/cssdw/css.css" type="text/css" rel="stylesheet" />
    <link href="<%=path %>/asset/cssdw/jquery.mcustomscrollbar.css" type="text/css" rel="stylesheet" />
    <script src="<%=path %>/asset/cssdw/jquery.js"></script>
    <script type="text/javascript" src="<%=path %>/asset/cssdw/superslide.js"></script>
    <script src="<%=path %>/asset/cssdw/echarts.common.min.js"></script>
   
  </head>
  <body>
    <style>
      body{overflow: hidden;background:#09236d url(<%=path%>/asset/imagedw/bodyi.jpg) no-repeat top center;}
    </style>
    <div class="top">
      <div class="dsjtit">
        <h3 class="street"></h3>
        <div class="stzyjf"><a href="javascript:history.go(-1)">返回</a></div>
      </div>
    </div>
    <div class="main mxs">
      <div class="bvenmk fl">

        <div class="zuoged">
          <ul>
            <li class="dweisj">
              <h6>支部书记</h6>
              <div class="yigeshuji">
                <div class="bd">
                  <ul class="picList">
                   <%--  <li>
                      <div class="pic"><a href="" ><img src="<%=path%>/asset/imagedw/jmzd.jpg" /></a></div>
                      <div class="title"><a href="" >颜龙华</a></div>
                    </li> --%>
                    <c:choose>
									<c:when test="${fn:length(shuji)==0}">
									<li>
											<div class="pic"><a href="#" ><img src="<%=path %>/asset/imagedw/touxiang.jpg" /></a></div>
											<div class="title"><a href="#" >暂缺</a></div>
										</li>				
									</c:when>
									<c:otherwise>
									
										<li>
											<div class="pic"><a href="<%=path %>/party_member_data?code=${shuji.PM_CODE}" ><img src="${shuji.HEAD_IMG}" /></a></div>
											<div class="title">
											<a href="<%=path %>/party_member_data?code=${shuji.PM_CODE}" >${shuji.LEADER_NAME}</a>
											
											</div>
										</li>
									</c:otherwise>
									
									</c:choose>
									
                  </ul>

                </div>
              </div>
            </li>
            <li>
              <h6>支部副书记</h6>
              <div class="shujicroll">
                <div class="bd">
                  <ul class="picList">
                   <%--  <li>
                      <div class="pic"><a href="" ><img src="<%=path%>/asset/imagedw/jmzd.jpg" /></a></div>
                      <div class="title"><a href="" >颜龙华</a></div>
                    </li>
                    <li>
                      <div class="pic"><a href="" ><img src="<%=path%>/asset/imagedw/jmzd.jpg" /></a></div>
                      <div class="title"><a href="" >颜龙华</a></div>
                    </li>
                    <li>
                      <div class="pic"><a href="" ><img src="<%=path%>/asset/imagedw/jmzd.jpg" /></a></div>
                      <div class="title"><a href="" >颜龙华</a></div>
                    </li> --%>
<c:choose>
									<c:when test="${fn:length(fushuji)==0}">
									<li>
											<div class="pic"><a href="#" ><img src="<%=path %>/asset/imagedw/touxiang.jpg" /></a></div>
											<div class="title"><a href="#" >暂缺</a></div>
										</li>				
									</c:when>
									<c:otherwise>
									
									<c:forEach var="memb" items="${fushuji}" begin="0" step="1">
									<li>
											<div class="pic"><a href="<%=path %>/party_member_data?code=${memb.PM_CODE }" ><img src="${memb.HEAD_IMG }" /></a></div>
											<div class="title"><a href="<%=path %>/party_member_data?code=${memb.PM_CODE }" >${memb.LEADER_NAME}</a></div>
										</li>
									</c:forEach>
									</c:otherwise>
									
									</c:choose>


                  </ul>
                </div>
              </div>
            </li>
            <li>
              <h6>支部委员</h6>
              <div class="shujicroll">
                <div class="bd">
                  <ul class="picList">
                   <%--  <li>
                      <div class="pic"><a href="" ><img src="<%=path%>/asset/imagedw/jmzd.jpg" /></a></div>
                      <div class="title"><a href="" >颜龙华</a></div>
                    </li>
                    <li>
                      <div class="pic"><a href="" ><img src="<%=path%>/asset/imagedw/jmzd.jpg" /></a></div>
                      <div class="title"><a href="" >颜龙华</a></div>
                    </li>
                    <li>
                      <div class="pic"><a href="" ><img src="<%=path%>/asset/imagedw/jmzd.jpg" /></a></div>
                      <div class="title"><a href="" >颜龙华</a></div>
                    </li>
 --%>
 <c:choose>
									<c:when test="${fn:length(dangwei)==0}">
									<li>
											<div class="pic"><a href="#" ><img src="<%=path %>/asset/imagedw/touxiang.jpg" /></a></div>
											<div class="title"><a href="#" >暂缺</a></div>
										</li>				
									</c:when>
									<c:otherwise>
									
									<c:forEach var="memb" items="${dangwei}" begin="0" step="1">
									<li>
											<div class="pic"><a href="<%=path %>/party_member_data?code=${memb.PM_CODE }" ><img src="${memb.HEAD_IMG }" /></a></div>
											<div class="title"><a href="<%=path %>/party_member_data?code=${memb.PM_CODE }" >${memb.LEADER_NAME}</a></div>
										</li>
									</c:forEach>
									</c:otherwise>
									
									</c:choose>

 
                  </ul>
                </div>
              </div>
            </li>
          </ul>
        </div>
        <script type="text/javascript">
          jQuery(".shujicroll").slide({mainCell:".bd ul",autoPage:true,effect:"topLoop",autoPlay:true,vis:1});
        </script> 

        <div class="zuoger">
          <h2>党员在线学习数统计</h2>
          <div class="kdieq">
            <ul>
              <li>
                <h5>党员先锋</h5>
                <div class="progressbar" id="dyxf" data-perc="17%">
                  <div class="bar color1"><span></span></div>
                  <div class="label"><span></span></div>
                </div>
              </li>
              <li>
                <h5>远程教育</h5>
                <div class="progressbar" id="ycjy" data-perc="35">
                  <div class="bar color2"><span></span></div>
                  <div class="label"><span></span></div> 
                </div>
              </li>
              <li>

                <h5>基层头条</h5>
                <div class="progressbar" id="jctt" data-perc="12">
                  <div class="bar color3"><span></span></div>
                  <div class="label"><span></span></div>
                </div>
              </li>
              <li>
                <h5>通知公告</h5>
                <div class="progressbar" id="tzgg" data-perc="25">
                  <div class="bar color4"><span></span></div>
                  <div class="label"><span></span></div>
                </div>
              </li>
              <li>
                <h5>微党课</h5>
                <div class="progressbar" id="wdk" data-perc="80">
                  <div class="bar color5" style="width: 30px;"><span></span></div>
                  <div class="label"><span></span></div>
                </div>
              </li>
              <li>
                <h5>两学一做</h5>
                <div class="progressbar" id="lxyz" data-perc="100">
                  <div class="bar color6"><span></span></div>
                  <div class="label"><span></span></div>
                </div>
              </li>
              <li>
                <h5>每日一学</h5>
                <div class="progressbar" id="mryx"  data-perc="50">
                  <div class="bar color7"><span></span></div>
                  <div class="label"><span></span></div>
                </div>
              </li>
              <li>
                <h5>每月一考</h5>
                <div class="progressbar" id="myyk" data-perc="20">
                  <div class="bar color8"><span></span></div>
                  <div class="label"><span></span></div>
                </div>
              </li>
            </ul>
          </div>
          <script type="text/javascript">
         	var  MONTH_DYXF=""//党员先锋
			var  MONTH_JCTT=""//基层教育
			var  MONTH_WDK=""//微党课
			var  MONTH_MRYX=""//每日一学
			var  MONTH_YCJY=""//远程教育
			var  MONTH_TZGG=""//通知公告
			var  MONTH_LXYZ=""//两学一做
			var  MONTH_MYYK=""//每月一考
          
			var code =window.location.search.split('&')[0].split('=')[1]
            $.ajax({
          		url: '<%=path%>/brench/onLearing',
          		type: 'POST',
          		dataType: 'json',
          		data: {code: code},
          		success:function(data){
					/* var ss =data.data.MONTH_DYXF
					var sun =data.data.MONTH_TOTAL
					var sss=ss*100/sun;
					var d =sss.toString();
					console.log(sss.toString());
					console.log(typeof d); */
					console.log(data.data.MONTH_YCJY*100/data.data.MONTH_TOTAL);
                   $("#dyxf").attr("data-perc",data.data.MONTH_DYXF);
                    $("#ycjy").attr("data-perc",data.data.MONTH_YCJY);
          			$("#wdk").attr("data-perc",data.data.MONTH_WDK);
          			$("#jctt").attr("data-perc",data.data.MONTH_JCTT);
          			$("#mryx").attr("data-perc",data.data.MONTH_MRYX);
          			$("#tzgg").attr("data-perc",data.data.MONTH_TZGG);
          			$("#lxyz").attr("data-perc",data.data.MONTH_LXYZ);
          			$("#myyk").attr("data-perc",data.data.MONTH_MYYK); 
          			$(".bar.color1").width(data.data.MONTH_DYXF*60/data.data.MONTH_TOTAL.toString())
          			$(".bar.color2").width(data.data.MONTH_YCJY*60/data.data.MONTH_TOTAL.toString())
          			$(".bar.color3").width(data.data.MONTH_JCTT*60/data.data.MONTH_TOTAL.toString())
          			$(".bar.color4").width(data.data.MONTH_TZGG*60/data.data.MONTH_TOTAL.toString())
          			$(".bar.color5").width(data.data.MONTH_WDK*60/data.data.MONTH_TOTAL.toString())
          			$(".bar.color6").width(data.data.MONTH_LXYZ*60/data.data.MONTH_TOTAL.toString())
          			$(".bar.color7").width(data.data.MONTH_MRYX*60/data.data.MONTH_TOTAL.toString())
          			$(".bar.color8").width(data.data.MONTH_MYYK*60/data.data.MONTH_TOTAL.toString())
          			 $('.progressbar').each(function(){
                          var t = $(this),
                              dataperc = t.attr('data-perc'),
                              barperc = Math.round(dataperc);
                          //t.find('.bar').animate({width:barperc}, dataperc*25);
                          t.find('.label').append('<div class="perc"></div>');
                          t.find('.perc').text(dataperc);
                          function perc(){
                            var length = t.find('.bar').css('width'),
                                perc = Math.round(parseInt(length)),
                                labelpos = (parseInt(length));
                          //  console.log(perc)
                             t.find('.label').css('left', labelpos);
                                t.find('.label').css('left', 60);
                           // t.find('.perc').text(perc);
                          }
                          perc();
                          setInterval(perc, 0); 
                        });

                     
          		//	console.log( typeof MONTH_DYXF);
          		},error:function(err){
                   	console.log("error")
                  }
           	})
          </script>
          <script type="text/javascript">
         
         	 <%-- var code =window.location.search.split('&')[0].split('=')[1]
              $.ajax({
            		url: '<%=path%>/brench/onLearing',
            		type: 'POST',
            		dataType: 'json',
            		data: {code: code},
            		success:function(data){
            			$("#dyxf").attr("data-perc","50");
            			$("#ycjy").attr("data-perc","50");
            			$("#wdk").attr("data-perc","50");
            			$("#mryx").attr("data-perc","50");
            			$("#jcjy").attr("data-perc","50");
            			$("#tzgg").attr("data-perc","50");
            			$("#lxyz").attr("data-perc","50");
            			$("#myyk").attr("data-perc","50");
            		
            		},error:function(err){
                     	console.log("error")
                    }
             	}) --%>
            /* $(function() {

              $('.progressbar').each(function(){
                var t = $(this),
                    dataperc = t.attr('data-perc'),
                    barperc = Math.round(dataperc);
                t.find('.bar').animate({width:barperc}, dataperc*25);
                t.find('.label').append('<div class="perc"></div>');

                function perc(){
                  var length = t.find('.bar').css('width'),
                      perc = Math.round(parseInt(length)),
                      labelpos = (parseInt(length));
                  // t.find('.label').css('left', labelpos);
                      t.find('.label').css('left', 100);
                  t.find('.perc').text(perc+'');
                }
                perc();
                setInterval(perc, 0); 
              });

            }); */
          </script>
          
          <%-- <script type="text/javascript">
              
  					 var code =window.location.search.split('&')[0].split('=')[1]
              $.ajax({
            		url: '<%=path%>/brench/onLearing',
            		type: 'POST',
            		dataType: 'json',
            		data: {code: code},
            		success:function(data){
            		},error:function(err){
                     	console.log("error")
                    }
             	})
              </script> --%>
              
              
          
          
          
          
        </div>
        <div class="zuogsa">
          <h2>支部每日登录人数</h2>
          <span>${mont}月份</span>
          <div id="gttmoe" style="height: 160px;"></div>
        </div>
        <script type="text/javascript">
        var mon =[];
         var dat=[];
        var code =window.location.search.split('&')[0].split('=')[1]
        $.ajax({
    		url: '<%=path%>/party_br/pmLoindata',
    		type: 'POST',
    		dataType: 'json',
    		data: {code: code},
    		success:function(data){
    			$.each(data.data,function(i,n){
    				mon[i]= n.TIME.split('-')[2];
    				dat[i]=n.LOSUM;
    				
    				
    			});
    			
    			
    			
    			
    			
    			
    			// 支部每日登录人数
    			var myChart = echarts.init(document.getElementById('gttmoe'));
    			var option = {
    			title: {
    			text: '',

    			top:0,
    			left:16,

    			textStyle:{
    			fontWeight:'100',
    			fontSize:18,
    			color:'#1ed7ff'
    			}
    			},
    			tooltip: {
    			trigger: 'axis',
    			formatter: '{c}',
    			axisPointer : {            // 坐标轴指示器，坐标轴触发有效
    			type : 'line'        // 默认为直线，可选为：'line' | 'shadow'
    			}

    			},
    			grid:{
    			x:34,
    			y:20,
    			width:360,
    			height:110,



    			},
    			xAxis: {
    			splitLine:{
    			show:true,
    			lineStyle:{
    			color: ['#25386E', '#25386E'],
    			width: 1
    			}
    			},

    			axisLine: {
    			//onZero: false,
    			lineStyle: {
    			color: '#1ed7ff'
    			}
    			},
    			axisTick: {
    			show: false
    			},
    			data:mon
    			},
    			yAxis: {
    			splitLine:{
    			show:true,
    			lineStyle:{
    			color: ['#343057', '#343057'],
    			width: 1,
    			type: 'dashed'
    			}
    			},

    			axisLine: {
    			//onZero: false,
    			lineStyle: {
    			color: '#1ed7ff'
    			}
    			},
    			axisTick: {
    			show: false
    			},

    			data: [ 00,10,20,30,40,50],
    			type: 'value'

    			},
    			series: [{

    			data:dat,
    			type: 'line',
    			itemStyle:{
    			mormal:{
    			lineStyle:{
    			color:'#1ed7ff'
    			}
    			}
    			},
    			smooth: true
    			}]
    			};

    			myChart.setOption(option);


    			
    			
    			
           },error:function(err){
           	console.log("error")
           }
    	})
        
        
        
        
        
        
        
        
        
        
        
        </script>
        
        
        
        
        
        <div class="zuogsi">
          <h2>近期组织生活</h2>
          <div class="bd">
            <ul id="zxiandcd">
            
            
              <%-- <li>
                <div class="kgor fl"><img src="<%=path%>/asset/imagedw/timg.jpg"></div>
                <div class="ysor fl"><a href="">廖俊波：把百姓记心头</a><p>福建南平境内的长深高速公路像一条蜿蜒的曲线，道路两旁...</p></div>
              </li>
              <li>
                <div class="kgor fl"><img src="<%=path%>/asset/imagedw/timg.jpg"></div>
                <div class="ysor fl"><a href="">廖俊波：把百姓记心头</a><p>福建南平境内的长深高速公路像一条蜿蜒的曲线，道路两旁...</p></div>
              </li>
              <li>
                <div class="kgor fl"><img src="<%=path%>/asset/imagedw/timg.jpg"></div>
                <div class="ysor fl"><a href="">廖俊波：把百姓记心头</a><p>福建南平境内的长深高速公路像一条蜿蜒的曲线，道路两旁...</p></div>
              </li>
              <li>
                <div class="kgor fl"><img src="<%=path%>/asset/imagedw/timg.jpg"></div>
                <div class="ysor fl"><a href="">廖俊波：把百姓记心头</a><p>福建南平境内的长深高速公路像一条蜿蜒的曲线，道路两旁...</p></div>
              </li>
              <li>
                <div class="kgor fl"><img src="<%=path%>/asset/imagedw/timg.jpg"></div>
                <div class="ysor fl"><a href="">廖俊波：把百姓记心头</a><p>福建南平境内的长深高速公路像一条蜿蜒的曲线，道路两旁...</p></div>
              </li> --%>
            </ul>
          </div>
          
          
          <!-- <script>
            (function($){
              $(window).on("load",function(){
                $(".zuogsi .bd ul").mCustomScrollbar({
                  theme:"minimal"
                });
              });
            })(jQuery);
          </script> -->
          <script type="text/javascript">
        
          var code =window.location.search.split('&')[0].split('=')[1]
          $.ajax({
      		url: '<%=path%>/party_br/brenchData',
      		type: 'POST',
      		dataType: 'json',
      		data: {code: code},
      		success:function(data){
      			/* var arrayJsonObject = JSON.parse(data);
      			   console.log(arrayJsonObject); */
      		//	console.log(data);
      			   var li = data.data;
      			   var p="";
      			   var ps="";
      			 $.each(li,function(i,n){
      				var ps="";
      			//console.log(n);
      				  var montharry = [];
      				  var r =n.POLITE_IMAGE;
      				$.each(r,function(i,n){
      					montharry[i]=n.IMAGE_PATH	
      					ps+='<img src="'+n.IMAGE_PATH+'" class="im">'
      				}); 
      				
      				p+='<li style="border-bottom: 1px dashed #616C9C;"><div class="kgor fl"><img src="'+montharry[0]+'"></div><div class="ysor fl"><a href="#" class="xinj-yi">'+n.POLITE_TITLE+'</a><p>'+n.POLITE_DETAILS+'</p></div></li>'; 
      				$("body").append('<div class="ditulloe"><div class="dituyi"><span></span></div> <div class="xinq"><h2>近期组织生活</h2><div class="dyuans"> <p>'+n.POLITE_DETAILS+'</br>'+ps+'</p></div></div></div>');
      			 });
      			 $("#zxiandcd").html(p);
      			
      			/* $(".zuogsi .bd ul").mCustomScrollbar({
                    theme:"minimal"
                  }); */
                  
                 
      			console.log(123);
                
                  
                  
                  
      			$('.zuogsi .bd ul li').on('click',function() {
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
      		   $(".ditulloe .dyuans p").mCustomScrollbar({
                   theme:"minimal"
                 });
      			
      			});
             },error:function(err){
             	console.log("error")
             }
      	})
          
          
          
          
          
          </script>
        </div>
      </div>
      <div class="zhonmk fl">
        <div class="zhonyi">
          <h2>本年度组织生活监控记录</h2>
          <div class="bd">
            <ul>
              <li><a href="javascript:;">1月</a></li>
              <li ><a href="javascript:;">2月</a></li>
              <li><a href="javascript:;">3月</a></li>
              <li><a href="javascript:;">4月</a></li>
              <li><a href="javascript:;">5月</a></li>
              <li><a href="javascript:;">6月</a></li>
              <li><a href="javascript:;">7月</a></li>
              <li><a href="javascript:;">8月</a></li>
              <li><a href="javascript:;">9月</a></li>
              <li><a href="javascript:;">10月</a></li>
              <li><a href="javascript:;">11月</a></li>
              <li ><a href="javascript:;">12月</a></li>
            </ul>
          </div>
        </div>
        <script type="text/javascript">
        var code =window.location.search.split('&')[0].split('=')[1]
        $.ajax({
    		url: '<%=path%>/party_br/getAllPoLife',
    		type: 'POST',
    		dataType: 'json',
    		data: {code: code},
    		success:function(data){
    			$.each(data.data,function(i,n){
    				
    				var b= n.month;
    				//console.log(b);
    				var oli = $(".zhonyi .bd ul").children("li").eq(b-1);
    				var Oa = oli.children("a").html();
    				oli.addClass("on").html('<span>'+n.total+' 次</span><a href="javascript:;">'+Oa+'</a>'); 
    				
    			});
    			
    			
       
    		},error:function(err){
             	console.log("error")
            }
     	})
        
        </script>
        <div class="zhoner">
          <h2>党建特色展示</h2>
          <div class="bd">
            <ul>
             <%--  <li>
                <div class="pic"><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/timg.jpg" /></a></div>
                <div class="title"><a href="" target="_blank">图片标题</a></div>
              </li>
              <li>
                <div class="pic"><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/timg.jpg" /></a></div>
                <div class="title"><a href="" target="_blank">图片标题</a></div>
              </li>
              <li>
                <div class="pic"><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/timg.jpg" /></a></div>
                <div class="title"><a href="" target="_blank">图片标题</a></div>
              </li>
              <li>
                <div class="pic"><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/timg.jpg" /></a></div>
                <div class="title"><a href="" target="_blank">图片标题</a></div>
              </li>
              <li>
                <div class="pic"><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/timg.jpg" /></a></div>
                <div class="title"><a href="" target="_blank">图片标题</a></div>
              </li> --%>
            </ul>
            <script type="text/javascript">
              jQuery(".zhoner").slide({mainCell:".bd ul",autoPlay:true,effect:"leftMarquee",vis:3,interTime:50});</script>
          </div>

        </div>
      </div>
      <script type="text/javascript">
              var code =window.location.search.split('&')[0].split('=')[1]
              $.ajax({
            		url: '<%=path%>/brench/pictureData',
            		type: 'POST',
            		dataType: 'json',
            		data: {code: code,
            			type:"pocode"
            			},
            		success:function(data){
                     //console.log(data);
                  var   h="<%=path%>/asset/imagedw/timg.jpg"
                     var p="";
                  if(data.data.PICTURE.length==0){
                    	p+='<li><div class="pic photo"><img src="'+h+'" /></div><div class="title photo">图片标题</div></li>'
                    }
                  $.each(data.data.PICTURE,function(i,n){
                	 // console.log(n);
                	  if(data.data.PICTURE.length==0){
                      	p+='<li><div class="pic photo"><img src="'+h+'" /></div><div class="title photo">图片标题</div></li>'
                      }else{
                      	p+='<li><div class="pic photo"><img src="'+n.P_PATH+'" /></div><div class="title photo" title="'+n.P_NAME+'">'+n.P_NAME+'</div></li>'
                      } 
                	  
                  });
                   
                    //console.log(data.data.PICTURE.length)
                    $(".zhoner .bd ul ").html(p);
                    layer.photos({
                   	  photos: '.photo'
                   	  ,anim: 5 
                   	}); 
                    jQuery(".zhoner").slide({mainCell:".bd ul",autoPlay:true,effect:"leftMarquee",vis:4,interTime:50});
						},error:function(err){
                     	console.log("error")
                    }
             	})
              </script> 
      <div class="younmk fr">
        <div class="younyi zuogsi">
          <h2>党员考核排名</h2>  
          <div class="bd">
           
            <table style="border-collapse:collapse;border-spacing:0">
              <tbody id="dy">
            
            
            
            </tbody>
      </table>
            
             <%--  <li><img id="one" src=""><span>李少芬</span>  <img class="deq" src="<%=path%>/asset/imagedw/djpyi.png">   &nbsp;&nbsp;&nbsp; <span>    95分 &nbsp; &nbsp;&nbsp; </span>  <p>第1名</p></li>
              <li><img id="two" src=""><span>李少芬</span>  <img class="deq" src="<%=path%>/asset/imagedw/djper.png">   &nbsp;&nbsp;&nbsp; <span>    95分 &nbsp; &nbsp;&nbsp; </span>  <p>第2名</p></li>
              <li><img id="three" src=""><span>李少芬</span>  <img class="deq" src="<%=path%>/asset/imagedw/djpsa.png">   &nbsp;&nbsp;&nbsp; <span>    95分 &nbsp; &nbsp;&nbsp; </span>  <p>第3名</p></li> --%>
           
          </div>
        </div>
        <script type="text/javascript">
              var  a="";
              var  p="";
  					 var code =window.location.search.split('&')[0].split('=')[1]
              $.ajax({
            		url: '<%=path%>/party_br/gatPmSeRanka',
            		type: 'POST',
            		dataType: 'json',
            		data: {code: code},
            		success:function(data){
            		//	console.log(data)
            			 $.each(data.data,function(i,n){
            				 p='<%=path%>/asset/imagedw/djpy'+i+'.png'
            				 var heal="<%=path %>/party_member_data?code="+n.PM_CODE;
            				 if(i<3){
            					
            					 a+= '<tr style="border-bottom: dashed 1px #344473;"><td width="34"><img src="'+n.HEARDURL+'" class="ima"></td><td width="74"><a href="'+heal+'" style="color: #1ed7ff;">'+n.PM_NAME+'</a></td><td width="36"><img class="deq" src="'+p+'">  </td><td width="86"><td/><td width="100">'+n.PM_SCORE+'分</td><td width="77">第'+n.PM_RANK+'名</td></tr>'
            				}else{
            					 a+= '<tr style="border-bottom: dashed 1px #344473;"><td width="34"><img src="'+n.HEARDURL+'" class="ima"></td><td width="74"><a href="'+heal+'" style="color: #1ed7ff;">'+n.PM_NAME+'</a></td><td width="36"> </td><td width="86"><td/><td width="100">'+n.PM_SCORE+'分</td><td width="77">第'+n.PM_RANK+'名</td></tr>'	
            				} 
            				//console.log(n);
            				 //<tr style="border-bottom: dashed 1px #344473;"><td width="34"><img src="'+n.HEARDURL+'"></td><td width="74">李少芬</td><td width="36"><img class="deq" src="'+p+'">  </td><td width="86"><td/><td width="100">'+n.PM_SCORE+'分</td><td width="77">第'+n.PM_RANK+'名</td></tr>
            				//<li style="overflow: hidden;"><img  src="'+n.HEARDURL+'"><span>'+n.PM_NAME+'</span><img class="deq" src="'+p+'"><span>'+n.PM_SCORE+'分 </span><p>第'+n.PM_RANK+'名</p></li>
            				 
            				
            				
            			//console.log(n);
            			 }); 
            			 $("#dy").html(a);
            			 if($(".ima").attr('src')==''){
            	        	   $(".ima").attr('src','<%=path%>/asset/imagedw/touxiang.jpg')
            	           }
            			 $(".zuogsi .bd td img").each(function(){
            				 console.log($(this).attr('src'))
            				 if($(this).attr('src')==' '||$(this).attr('src')=='0'||$(this).attr('src')=='_'){
             		    		$(this).attr('src','/gzdsj-show/asset/imagedw/touxiang.jpg')
             		        }
            			 });
            			 
            			 
            			 /* $("#dy").mCustomScrollbar({
                             theme:"minimal"
                           }); */
            			//console.log(data);
            		},error:function(err){
                     	console.log("error")
                    }
             	})
              </script> 
        <div class="youner">
          <h2>支部考核排名</h2>
        <!--   <span></span>支部排名：第2名 -->
           <p></p>
          <div id="fetmoe" style="height: 180px;"></div>
        </div>
        <script type="text/javascript">
        var FRACTION_NJL="";
        var TOTAL="";
        var FRACTION_ZDL="";
        var FRACTION_ZZSH="";
        var code =window.location.search.split('&')[0].split('=')[1]
        $.ajax({
    		url: '<%=path%>/brench/getPmOvera',
    		type: 'POST',
    		dataType: 'json',
    		data: {code: code},
    		success:function(data){
    			FRACTION_NJL=data.data.FRACTION_NJL;
			    TOTAL=data.data.TOTAL;
			    FRACTION_ZDL=data.data.FRACTION_ZDL;
			    FRACTION_ZZSH=data.data.FRACTION_ZZSH;
			    $(".youner p").append(TOTAL);
			   // console.log(FRACTION_ZZSH);
    			
    			// 支部考核排名

    			var myChart = echarts.init(document.getElementById('fetmoe'));
    			var option = {
    			title: {
    			text: '',
    			top:10,
    			left:25,
    			textStyle:{
    			fontWeight:'00',
    			fontSize:20,
    			color:'#ff5858'
    			}
    			},
    			legend: {
    			orient: 'vertical',
    			right: 20,
    			bottom: 50,
    			textStyle:{
    			color:'#fff'
    			},
    			data: ["参与组织生活","凝聚力","战斗力",]
    			},
    			series: [{
    			name: '考核情况',
    			type: 'pie',
    			radius : ['30%', '40%'],
    			center:['30%','50%'],
    			data: [
    			{value:FRACTION_ZZSH,name:'参与组织生活',itemStyle:{color:'#2DC5C3'}},
    			{value:FRACTION_NJL,name:'凝聚力',itemStyle:{color:'#FFA60A'}},
    			{value:FRACTION_ZDL,name:'战斗力',itemStyle:{color:'#006CFF'}},
    			]
    			}]
    			}; 
    			// 使用刚指定的配置项和数据显示图表。
    			myChart.setOption(option); 

    			
    			
    			
    		},error:function(err){
             	console.log("error")
            }
     	})
        
        
        
        
        
        </script>
        
        <div class="younsa">
          <h2>支部考核成绩总体趋势</h2>
          <span>${mont}月份</span>
          <div id="bgtmoe" style="height: 180px;"></div>

        </div>
        <script type="text/javascript">
        var arr = [];
        var code =window.location.search.split('&')[0].split('=')[1]
        $.ajax({
    		url: '<%=path%>/party_br/getOverallTestTrend',
    		type: 'POST',
    		dataType: 'json',
    		data: {code: code},
    		success:function(data){
    			$.each(data.data,function(i,n){
      				arr[i]=n.FRACTION;
    			// 支部考核成绩总体趋势
    		});
    			
    			// 支部考核成绩总体趋势
    			var myChart = echarts.init(document.getElementById('bgtmoe'));
    			var option = {
    			title: {
    			text: '',

    			top:0,
    			left:16,

    			textStyle:{
    			fontWeight:'100',
    			fontSize:18,
    			color:'#1ed7ff'
    			}
    			},
    			tooltip: {
    			trigger: 'axis',
    			formatter: '得分:{c}',
    			axisPointer : {            // 坐标轴指示器，坐标轴触发有效
    			type : 'line'        // 默认为直线，可选为：'line' | 'shadow'
    			}

    			},
    			grid:{
    			x:34,
    			y:20,
    			width:360,
    			height:125,



    			},
    			xAxis: {
    			splitLine:{
    			show:true,
    			lineStyle:{
    			color: ['#25386E', '#25386E'],
    			width: 1
    			}
    			},

    			axisLine: {
    			//onZero: false,
    			lineStyle: {
    			color: '#1ed7ff'
    			}
    			},
    			axisTick: {
    			show: false
    			},
    			data: [1,2,3,4,5,6,7,8,9,10,11,12]
    			},
    			yAxis: {
    			splitLine:{
    			show:true,
    			lineStyle:{
    			color: ['#343057', '#343057'],
    			width: 1,
    			type: 'dashed'
    			}
    			},

    			axisLine: {
    			//onZero: false,
    			lineStyle: {
    			color: '#1ed7ff'
    			}
    			},
    			axisTick: {
    			show: false
    			},

    			data: [ 00,10,20,30,40,50],
    			type: 'value'

    			},
    			series: [{

    			data:arr,
    			type: 'line',
    			itemStyle:{
    			mormal:{
    			lineStyle:{
    			color:'#1ed7ff'
    			}
    			}
    			},
    			smooth: true
    			}]
    			};

    			myChart.setOption(option);


    			
    			
    			
    			//console.log(arr);
    		},error:function(err){
             	console.log("error")
            }
     	})
        
        
        
        
        
        </script>
        <div class="younsi">
          <h2>本月党员生活综合排名</h2>
          <b>${mont }月份</b>
          <div class="bd">
           <table style="border-collapse:collapse;border-spacing:0">
              <tbody id="dyq">
            
            
            
            </tbody>
      </table>
         <%--  <ul id="dyq">
              <tr >
                  <td width="34"><img src="<%=path%>/asset/imagedw/jmzd.jpg"></td>
                  <td width="74">李少芬</td>
                  <td width="36">  <img class="deq" src="<%=path%>/asset/imagedw/djpyi.png">  </td> 
                  <td width="86"><td/>
                  <td width="60">95分</td> 
                  <td width="77">第1名</td>
                </tr>
              <li><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span>李少芬</span>  <img class="deq" src="<%=path%>/asset/imagedw/djpyi.png">   &nbsp;&nbsp;&nbsp;  <p>第1名</p></li>
              <li><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span>李少芬</span>  <img class="deq" src="<%=path%>/asset/imagedw/djper.png">   &nbsp;&nbsp;&nbsp;  <p>第2名</p></li>
              <li><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span>李少芬</span>  <img class="deq" src="<%=path%>/asset/imagedw/djpsa.png">   &nbsp;&nbsp;&nbsp;  <p>第3名</p></li>
           
            </ul>  --%>
          </div>
        </div>
      </div>
      
       <script type="text/javascript">
              var  aa="";
              var  pp="";
  					 var code =window.location.search.split('&')[0].split('=')[1]
              $.ajax({
            		url: '<%=path%>/party_br/getPmLifeSan',
            		type: 'POST',
            		dataType: 'json',
            		data: {code: code},
            		success:function(data){
            		//	console.log(data)
            			 $.each(data.data,function(i,n){
            				 if(i>2){return;}
            				 var yy =i+1;
            				  //console.log(n.headurl)
            				//  <tr style="border-bottom: dashed 1px #344473;"><td width="34"><img src="'+n.HEARDURL+'"></td><td width="74">李少芬</td><td width="36"><img class="deq" src="'+p+'">  </td><td width="86"><td/><td width="100">'+n.PM_SCORE+'分</td><td width="77">第'+n.PM_RANK+'名</td></tr>
            				 pp='<%=path%>/asset/imagedw/djpy'+i+'.png'
            				 var heal="<%=path %>/party_member_data?code="+n.pm_code;
            				// <li><img src='+n.headurl+'><span>李少芬</span>  <img class="deq" src='+pp+'>   &nbsp;&nbsp;&nbsp;  <p>第'+yy+'名</p></li>
            				// aa+= '<li><img src='+n.headurl+' class="ima"><span><a href="'+heal+'" style="color: #1ed7ff;">'+n.name+'</a></span>  <img class="deq" src='+pp+'>   &nbsp;&nbsp;&nbsp;  <p>第'+yy+'名</p></li>'
            			aa+='<tr style="border-bottom: dashed 1px #344473;"><td width="34"><img src="'+n.headurl+'" class="ima"></td><td width="74"><a href="'+heal+'" style="color: #1ed7ff;">'+n.name+'</a></td><td width="36"><img class="deq" src="'+pp+'">  </td><td width="86"><td/><td width="100"></td><td width="77">第'+yy+'名</td></tr>'
            			 }); 
            			 $("#dyq").html(aa);
            			 
            			 $(".younsi .bd td img").each(function(){
            				 console.log($(this).attr('src'))
            				 if($(this).attr('src')==' '){
             		    		$(this).attr('src','/gzdsj-show/asset/imagedw/touxiang.jpg')
             		        }
            			 });
            			 
            		},error:function(err){
                     	console.log("error")
                    }
             	})
             	
             	
             	$(function () {
        ImageLoadEx1();
    });

    function ImageLoadEx1() {  //加载不到 图片 时显示 默认图片
        
        $('.younsi .bd td img').error(function () {   //加载图片 出现404状态时触发
            $(this).attr("src", "/gzdsj-show/asset/imagedw/touxiang.jpg");  //将加载不到的图片 的src属性 修改成默认 图片 ，注意：默认图片必须保证存在，否则 会一直 调用 此函数
        }); 
    }
              </script> 
      <script src="<%=path %>/asset/cssdw/sheqy.js"></script>
      <script src="<%=path %>/asset/cssdw/script.js"></script>
      <script type="text/javascript" src="<%=path %>/asset/cssdw/jquery.mcustomscrollbar.concat.min.js"></script>

    </div>
    <div class="hr-30"></div>
     <script src="<%=path %>/asset/cssdw/sheqy.js"></script>
      <!-- <script >

      var ref = setInterval(function(){
    	  $(".younyi .bd ul li ").each(function() {
        		if($(this).children("img").attr("src")==""){
        			$(this).children("img").eq(0).attr("src","/testgzbig_show/asset/imagedw/touxiang.jpg");
        		}
        	});
    	  clearInterval(ref);
    	},100);
      
      </script> -->
      <script defer="defer">
      $(".zuogsi .bd ul").mCustomScrollbar({
          theme:"minimal"
        });
      $(".zuogsi .bd").mCustomScrollbar({
          theme:"minimal"
        });
     </script >
      <script type="text/javascript">
        var code =window.location.search.split('&')[0].split('=')[1]
        $.ajax({
    		url: '<%=path%>/party_br/getName',
    		type: 'POST',
    		dataType: 'json',
    		data: {code: code},
    		success:function(data){
    			$(".dsjtit .street").append(data.data);
    			$('.street').width($('.street').text().length*30+40);
           },error:function(err){
           	console.log("error")
           }
    	})
        
        
        
        
        
        
        
        
        
        
        
        </script>
      
       <script >

      
       $(function(){
         
           if($(".ima").attr('src')==''){
        	   $(".ima").attr('src','/testgzbig_show/asset/imagedw/touxiang.jpg')
           }
          
         });
     </script>
       <script >

       $('.street').width($('.street').text().length*30+40);
       
     </script>
    <script src="<%=path %>/asset/cssdw/layer.js"></script>
    <script>
    $(".younsi .bd td img").each(function(index, el) {
    	console.log($(this).attr('src'))
    	if($(this).attr('src')==' '||$(".ima").attr('src')=='0'||$(".ima").attr('src')=='_'){
    		$(this).attr('src','<%=path%>/asset/imagedw/touxiang.jpg')
        }
    	/* $.ajax({
    		url:$(this).attr('src'),
    		error:function(xhr, error, ex){
    			if (xhr.status == '404') {
    				$(this).attr("src", "http://rjdjpic.71zhihui.com/rjdj/rjdj/attached/avator/2018/01/01/ph_pic.jpg");
    			}
    		}
    	}); */
    });
    <script type="text/javascript">
    $(function () {
        ImageLoadEx1();
    });

    function ImageLoadEx1() {  //加载不到 图片 时显示 默认图片
        
        $('.younsi .bd td img').error(function () {   //加载图片 出现404状态时触发
            $(this).attr("src", "/gzdsj-show/asset/imagedw/touxiang.jpg");  //将加载不到的图片 的src属性 修改成默认 图片 ，注意：默认图片必须保证存在，否则 会一直 调用 此函数
        }); 
    }
</script>
    
    </script>
   
  </body>
</html>





