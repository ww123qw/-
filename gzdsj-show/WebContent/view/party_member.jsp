<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:set var="BASE" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta charset="utf-8" />
    <title></title>
    <link rel="stylesheet" type="text/css" href="${BASE}/asset/css/csspm/reset.css" />
    <link href="${BASE}/asset/css/csspm/css.css" type="text/css" rel="stylesheet" />
    <link href="${BASE}/asset/css/csspm/jquery.mcustomscrollbar.css" type="text/css" rel="stylesheet" />
    <script src="${BASE}/asset/css/csspm/jquery.js"></script>
    <script type="text/javascript" src="${BASE}/asset/css/csspm/superslide.js"></script>
    <script src="${BASE}/asset/css/csspm/echarts.common.min.js"></script>
  </head>
  <body>
    <style>
      body{overflow-x: hidden;background: url(${BASE}/asset/images/pmimage/bodyi.jpg) no-repeat top center;}
    </style>
    <div class="top">
      <div class="dsjtit">
        <h3 class="street"><span>党员个人面面</span> </h3>
        <div class="stzyjf"><a href="javascript:history.go(-1)">返回</a></div>
      </div>
    </div>
    <div class="main mxs">
      <div class="gebasicl fl">
        <div class="basic">
          <div class="qinformation xddinw fl">
            <h2>基层党组织</h2>
            <div class="zjsml">
              <img src="" alt="">
            </div>
            <ul class="dyuanxx">
              <li><span>姓　　名：</span></li>
              <li><span>联系电话：</span> </li>
              <li><span>出生日期：</span></li>
              <li><span>所属支部：</span></li>
              <li style="border-bottom: 1px dashed #344473;"><span>入党日期：</span> </li>
              <li style="border-bottom: 1px dashed #344473;"><span></span> </li>

              <!--  <li class="tes"><span>所属支部：</span>厚德路社区第一党支部 </li> -->
            </ul>
          </div>
          <div class="fr">
            <div class="numerical">
              <ul>
                <li><h2>本月参与组织生活数</h2> <h1></h1></li>
                <li><h2>往月平均数</h2> <h1></h1></li>
              </ul>
            </div>
            <div class="numerical">
              <ul>
                <li><h2>本月参与党员生活数</h2> <h1></h1></li>
                <li><h2>往月平均数</h2> <h1></h1></li>
              </ul>
            </div>
            <div class="khqing">
              <h2>考核情况</h2>
              <div id="fetmoe" style="height: 140px;"></div>
            </div>


          </div>
        </div>
        <script type="text/javascript">
        var FRACTION_YXL;
              var code =window.location.search.split('&')[0].split('=')[1]
              $.ajax({
            		url: '${BASE}/member/getP',
            		type: 'POST',
            		dataType: 'json',
            		data: {code: code},
            		success:function(data){
            		var getdata=$.parseJSON(data);
            		
            		console.log(getdata.data);
            		//FRACTION_YXL=getdata.FRACTION_YXL;
            		FRACTION_YXL={value:getdata.data.FRACTION_YXL,name:'参与组织生活'};
            		var myChart = echarts.init(document.getElementById('fetmoe'));
            		var option = {
            		title: {
            		text: '',
            		top:0,
            		left:95,
            		textStyle:{
            		fontWeight:'00',
            		fontSize:20,
            		color:'#1ed7ff'
            		}
            		},
            		legend: {
            		orient: 'vertical',
            		right: 120,
            		bottom: 30,
            		textStyle:{
            		color:'#1ed7ff'
            		},
            		data: ["参与组织生活","学习教育","战斗力",]
            		},
            		series: [{
            		name: '考核情况',
            		type: 'pie',
            		radius : ['60%', '40%'],
            		center:['30%','50%'],
            		data: [
            		{value:getdata.data.FRACTION_ZZSH,name:'参与组织生活',itemStyle:{color:'#2DC5C3'}},
            		{value:getdata.data.FRACTION_XXJY,name:'学习教育',itemStyle:{color:'#FFA60A'}},
            		{value:getdata.data.FRACTION_ZDL,name:'战斗力',itemStyle:{color:'#006CFF'}},
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
        
         
         <script type="text/javascript">
              var code =window.location.search.split('&')[0].split('=')[1]
              $.ajax({
            		url: '${BASE}/member/getMember',
            		type: 'POST',
            		dataType: 'json',
            		data: {code: code},
            		success:function(data){
            		var getdata=$.parseJSON(data);
            		$(".dyuanxx li")[0].append(getdata.data.NAME)
            		$(".dyuanxx li")[1].append(getdata.data.MOBILE_NU)
            		$(".dyuanxx li")[2].append(getdata.data.BIRTH_DAT)
            		$(".dyuanxx li")[3].append(getdata.data.BELONG_PO)
            		$(".dyuanxx li")[4].append(getdata.data.BECOME_PM_DATE)
            		$(".zjsml img").attr("src",getdata.data.HEAD_PORTRAIT)
            		$(".numerical ul li h1")[0].append(getdata.data.MONTH_POLIFE_NUMBER)
            		$(".numerical ul li h1")[1].append(getdata.data.BEMONTH_POLIFE_AVERAGE)
            		$(".numerical ul li h1")[2].append(getdata.data.MONTH_PMLIFE_NUMBER)
            		$(".numerical ul li h1")[3].append(getdata.data.BEMONTH_PMLIFE_AVERAGE)
            		$(".sjgneq span").append(getdata.data.PMANALYSIS)
            		if($(".zjsml img").attr("src")==""){
            			console.log("sshfk")
            			$(".zjsml img").attr("src","${BASE}/asset/imagedw/touxiang.jpg");
            		}
            		
            		
            		
            		},error:function(err){
                     	console.log("error")
                    }
             	})
              </script> 
        
        <div class="rfutur">
          <h2>近期党员生活</h2>
          <div class="xinjtitle-gg">
            <div class="xinjtitle">
              <span class="xinj-yi">党员生活概要 </span>
              <span class="xinj-id">生活类型</span>
              <span class="xinj-con">活动时间</span>
              <span class="xinj-bon">活动详情</span>
            </div>
            <ul>  
         <!--      <li><a href=""><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li>
              <li><a href=""><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li>
              <li><a href=""><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li>
              <li><a href=""><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li>
              <li><a href=""><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li>
              <li><a href=""><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li>
              <li><a href=""><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li>
              <li><a href=""><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li>
              <li><a href=""><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li>
              <li><a href=""><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li>
              <li><a href=""><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li>
              <li><a href=""><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li>
              <li><a href=""><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li>
              <li><a href=""><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li>
              <li><a href=""><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li>
              <li><a href=""><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li>
              <li><a href=""><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li>
              <li><a href=""><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li>
              <li><a href=""><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li>
              <li><a href=""><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li>
              <li><a href=""><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li>
              <li><a href=""><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li>
              <li><a href=""><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li>
              <li><a href=""><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li>
              <li><a href=""><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li>
              <li><a href=""><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li>
              <li><a href=""><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li>
              <li><a href=""><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li>
              <li><a href=""><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li>
              <li><a href=""><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li> -->
            </ul>
          </div>
  <script type="text/javascript">
              var code =window.location.search.split('&')[0].split('=')[1]
              $.ajax({
            		url: '${BASE}/member/getPmLifeL',
            		type: 'POST',
            		dataType: 'json',
            		data: {code: code},
            		success:function(data){
            		var getdata=$.parseJSON(data);
            		console.log(getdata);
            		var p="";
            		$.each(getdata.data,function(i,n){
            			p+='<li><a href=""><span class="xinj-yi">'+n.PMLITE_DETAILS+'</span><span class="xinj-id"> '+n.PMLITE_LABEL+'</span><span class="xinj-con">'+n.ACTIVITY_TIME+'</span><span class="xinj-bon">详情</span></a></li>'
            		});
            		
            	$(".xinjtitle-gg ul").html(p);	
            		
            	 $(".rfutur .xinjtitle-gg ul").mCustomScrollbar({
                     theme:"minimal"
                   });
            		//console.log(getdata);
            		},error:function(err){
                     	console.log("error")
                    }
             	})
              </script> 

        

        </div>
      </div>
      <div class="lgetub fr">
        <div class="digetth">
          <h2>全年考核趋势</h2>
          <span>${year}年</span>
          <div id="digetu" style="height: 285px;"></div>
          <script type="text/javascript">
          var pmmonth=[];
              var code =window.location.search.split('&')[0].split('=')[1]
              $.ajax({
            		url: '${BASE}/brench/getOverallTestTrend',
            		type: 'POST',
            		dataType: 'json',
            		data: {code: code,
            			type:"pmcode"
            			},
            		success:function(data){
            		//console.log(data);
            		$.each(data.data,function(i,n){
            			pmmonth[i]=n.FRACTION;
            		});
            		 var myChart = echarts.init(document.getElementById('digetu'));
            	        var option = {
            	                title: {
            	                    text: '',

            	                    top:10,
            	                    left:25,

            	                    textStyle:{
            	                        fontWeight:'100',
            	                        fontSize:18,
            	                        color:'#ff5858'
            	                    }
            	                },
            	                tooltip: {
            	                    trigger: 'axis',
            	                    formatter: '得分:{c}<br/> 分排：12',
            	                     axisPointer : {            // 坐标轴指示器，坐标轴触发有效
            	                            type : 'line'        // 默认为直线，可选为：'line' | 'shadow'
            	                        }

            	                },
            	                grid:{
            	                     x:40,
            	                     y:50,
            	                     width:540,
            	                     height:200
            	                },
            	                xAxis: {
            	                    splitLine:{
            	                            show:true,
            	                            lineStyle:{
            	                                color: ['#343057', '#343057'],
            	                                width: 1
            	                            }
            	                        },

            	                    axisLine: {
            	                        //onZero: false,
            	                        lineStyle: {
            	                            color: '#fff'
            	                        }
            	                    },
            	                    axisTick: {
            	                        show: false
            	                        },
            	                    data: [0,1,2,3,4,5,6,7,8,9,10,11,12]
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
            	                            color: '#fff'
            	                        }
            	                    },
            	                    axisTick: {
            	                        show: false
            	                        },

            	                    data: [0,10,20,30,40,50,60,70,80,90,100],
            	                    type: 'value'

            	                },
            	                series: [{
            	                    data: pmmonth,
            	                    type: 'line',
            	                    itemStyle:{
            	                        mormal:{
            	                            lineStyle:{
            	                                color:'#6f8cff'
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
        </div>
        <div class="digetth">
          <h2>当月在线学习</h2>
          <span style="right: 44px;">${yearmonth}</span>
          <div id="dsdgetu" style="height: 268px;"></div>

        </div>
        
        <script type="text/javascript">
        var dayline=[];
        var zline=[];
        var online=[];
              var code =window.location.search.split('&')[0].split('=')[1]
              $.ajax({
            		url: '${BASE}/member/pmLearning',
            		type: 'POST',
            		dataType: 'json',
            		data: {code: code},
            		success:function(data){
            		var getdata=$.parseJSON(data);
            		$.each(getdata.dayline,function(i,n){
            			dayline[i]=n;
            		});
            		$.each(getdata.zline,function(i,n){
            			zline[i]=n;
            		});
            		$.each(getdata.online,function(i,n){
            			online[i]=n;
            		});
            		console.log(getdata);
            		
            		
            		
            		var myChart = echarts.init(document.getElementById('dsdgetu'));
            	       var option = {
            	                title: {
            	                    text: '',

            	                    top:10,
            	                    left:25,

            	                    textStyle:{
            	                        fontWeight:'100',
            	                        fontSize:18,
            	                        color:'#ff5858'
            	                    }
            	                },
            	                tooltip: {
            	                    trigger: 'axis'


            	                },
            	                grid:{
            	                     x:40,
            	                     y:50,
            	                      width:540,
            	                     height:200
            	                },
            	                xAxis: {
            	                    splitLine:{
            	                            show:true,
            	                            lineStyle:{
            	                                color: ['#343057', '#343057'],
            	                                width: 1
            	                            }
            	                        },

            	                    axisLine: {
            	                        //onZero: false,
            	                        lineStyle: {
            	                            color: '#fff'
            	                        }
            	                    },
            	                    axisTick: {
            	                        show: false
            	                        },
            	                    data: [0,1,2,3,4,5,6,7,8,9,10,11,12]
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
            	                            color: '#fff'
            	                        }
            	                    },
            	                    axisTick: {
            	                        show: false
            	                        },

            	                    data: [0,10,20,30,40,50,60,70,80,90,100],
            	                    type: 'value'

            	                },
            	                series: [{
            	                    name:'每日一学',
            	                    data: dayline,
            	                    type: 'line',
            	                    itemStyle:{
            	                        mormal:{
            	                            lineStyle:{
            	                                color:'#6f8cff'
            	                            }
            	                        }
            	                    },
            	                    smooth: true
            	                },{
            	                    name:'自主学习',
            	                    data: zline,
            	                    type: 'line',
            	                    itemStyle:{
            	                        mormal:{
            	                            lineStyle:{
            	                                color:'#6f8cff'
            	                            }
            	                        }
            	                    }
            	                    //smooth: true
            	                },
            	                {
            	                    name:'每月一考',
            	                    data: online,
            	                    type: 'line',
            	                    itemStyle:{
            	                        mormal:{
            	                            lineStyle:{
            	                                color:'#6f8cff'
            	                            }
            	                        }
            	                    }
            	                    //smooth: true
            	                }]
            	            };

            	        myChart.setOption(option);

            		},error:function(err){
                     	console.log("error")
                    }
             	})
              </script> 
        <div class="sjgneq">
          <h2>预警系统</h2>
          <span></span>
        </div>
        <script src="${BASE}/asset/css/csspm/sheqy.js"></script>
        <script src="${BASE}/asset/css/csspm/script.js"></script>
        <script type="text/javascript" src="${BASE}/asset/css/csspm/jquery.mcustomscrollbar.concat.min.js"></script>
<script type="text/javascript">


</script>

      </div>
      <div class="hr-35"></div>
    </div>

  </body>
</html>


