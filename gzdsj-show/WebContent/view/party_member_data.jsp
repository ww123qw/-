<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:set var="BASE" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta charset="utf-8" />
		<title>党员个人页面</title>
		<link rel="stylesheet" type="text/css" href="${BASE}/asset/css/reset.css" />
		<link href="${BASE}/asset/css/css.css" type="text/css" rel="stylesheet" />
		<link href="${BASE}/asset/css/jquery.mCustomScrollbar.css" type="text/css" rel="stylesheet" />
		<script src="${BASE}/asset/js/jquery.js"></script>
		<script type="text/javascript" src="${BASE}/asset/js/SuperSlide.js"></script>
		<script src="${BASE}/asset/js/echarts.common.min.js"></script>
		<!--[if IE 6]>
		<script src="js/P0w26re5T_DD_belatedPNG_0.0.8a-min.js"></script>
		<script type="text/javascript">
		DD_belatedPNG.fix('.jiao1,.jiao2,.jiao3,.jiao4,.dsjtit h3,.dsjtit h3 span,.chom,.builtit');
		</script>
		<![endif]-->
	</head>
	<body>
		<style>
		 body{overflow: hidden; background: #060214}
		 .imgurls{width:390px;margin: 10px auto;}
		</style>
		<div class="top">
			<a href="javascript:history.go(-1)" style="display:  block;height: 50px;width: 140px;position:  fixed;top: 10px;right: 34px;background: url(${BASE}/asset/images/end.png) no-repeat right center;color: #4c4388;line-height: 45px;text-align:  center;font-size: 16px;">返 回</a>
		
			<div class="dsjtit">
				<h3 class="street"><span>党员个人页面</span></h3>
			</div>
		</div>
		<div class="main mxs">
			<div class="gebasicl fl">
				<div class="basic">
					<div class="qinformation xddinw fl">
						<div class="hr-18"></div>
						<h5>党员基本情况</h5>
						<div class="zjsml">
							<div class="tupa fl">
							<img src="${member_info.HEAD_PORTRAIT }" alt="">
							</div>
							<ul class="dyuanxx fr">
								<li><span>姓　　名：</span>${member_info.NAME } </li>
								<li><span>出生日期：</span>${member_info.BIRTH_DAT} </li>
								<li><span>入党日期：</span>${member_info.BECOME_PM_DATE} </li>
								<li><span>联系电话：</span>${member_info.MOBILE_NU } </li>
								<li class="tes"><span>所属支部：</span>${member_info.BELONG_PO} </li>
							</ul>
						</div>

						<span class="jddinw si jiao1"></span>
						<span class="jddinw si jiao2"></span>
						<span class="jddinw si jiao3"></span>
						<span class="jddinw si jiao4"></span>
					</div>
					<div class="fr">
						<div class="numerical  xddinw">
							<ul>
								<li>本月参与组织生活数：<span>${member_info.MONTH_POLIFE_NUMBER }</span></li>
								<li>往月平均数：<span>${member_info.BEMONTH_POLIFE_AVERAGE }</span></li>
								<li>本月发布党员生活数：<span>${member_info.MONTH_PMLIFE_NUMBER }</span></li>
								<li>往月平均数：<span>${member_info.BEMONTH_PMLIFE_AVERAGE }</span></li>
							</ul>
							<span class="jddinw si jiao1"></span>
							<span class="jddinw si jiao2"></span>
							<span class="jddinw si jiao3"></span>
							<span class="jddinw si jiao4"></span>
						</div>
						<div class="hr-20"></div>
						<div class="khqing  xddinw">
							<div id="khqing"></div>
							<span class="fraction">${singleCheck.TOTAL}分</span>
							<span class="fraction xingx">
							<!-- <img src="asset/images/hongxx1.png" alt="">
							<img src="asset/images/hongxx1.png" alt="">
							<img src="asset/images/hongxx1.png" alt="">
							<img src="asset/images/hongxx1.png" alt="">
							<img src="asset/images/huixx1.png" alt=""> -->
							</span>
							<span class="jddinw si jiao1"></span>
							<span class="jddinw si jiao2"></span>
							<span class="jddinw si jiao3"></span>
							<span class="jddinw si jiao4"></span>
						</div>
					</div>
				</div>
				<div class="hr-20"></div>
				<div class="nearfuture xddinw">
					<h5><span>点击详情查看</span>近期党员生活</h5>
					<ul>
					
						<li class="tit">
							<span class="pjs">党员生活概要</span>
							<span class="leix">生活标签</span>
							<span class="otime">活动时间</span>
							<span class="xqi">活动详情</span>
						</li>
						
						<c:forEach var="pm_act" items="${pmActList}" begin="0" step="1">
							<li>
								<span class="pjs">${pm_act.SUMMARY }</span>
								<span class="leix">${pm_act.PMLITE_LABEL }</span>
								<span class="otime">${pm_act.ACTIVITY_TIME }</span>
								<span class="xqi"><a href="javascript:;">详情</a></span>
							</li>
						</c:forEach>
<!-- 						<li> -->
<!-- 							<span class="pjs"><a href="">组织323国道卫生整治</a></span> -->
<!-- 							<span class="leix">民主评议</span> -->
<!-- 							<span class="otime">2018-05-10</span> -->
<!-- 							<span class="xqi"><a href="javascript:;">详情</a></span> -->

<!-- 						</li> -->

					</ul>
					<span class="jddinw si jiao1"></span>
					<span class="jddinw si jiao2"></span>
					<span class="jddinw si jiao3"></span>
					<span class="jddinw si jiao4"></span>
				</div>
				<!-- 近期党员生活 -->
				<ul class="nearcons jddinw">
				<c:forEach var="pm_act" items="${pmActList}" begin="0" step="1">
					<li>
						<h5><span>X</span>${pm_act.PMLITE_LABEL }</h5>
						<div class="hr-10"></div>
						<div class="cosmn">
							${pm_act.PMLITE_DETAILS }
							<c:forEach var="pm" items="${pm_act.PICTURE}" begin="0" step="1">
							
							<div class="imgurls">
								<img src="${pm}"/>
							</div>
							</c:forEach>
						</div>
					</li>
				</c:forEach>
<!-- 					<li> -->
<!-- 						<h5><span>X</span>组织323国道卫生整治</h5> -->
<!-- 						<div class="hr-10"></div> -->
<!-- 						<div class="cosmn"> -->
<!-- 							0组织323国道卫生整治组织323国道卫生整治组织323国道卫生整治组织323国道卫生整治组织323国道卫生整治组织323国道卫生整治组织323国道卫生整治组织323国道卫生整治组织323国道卫生整治组织323国道卫生整治组织323国道卫生整治组织323国道卫生整治组织323国道卫生整治组织323国道卫生整治组织323国道卫生整治组织323国道卫生整治组织323国道卫生整治组 -->
<!-- 						</div> -->
<!-- 					</li> -->
				</ul>
			</div>
			<div class="lgetub fr">
				<div class="digetu xddinw">

					<div id="digetu"></div>
					<span class="jddinw year">( ${year}年 )</span>
					<span class="jddinw si jiao1"></span>
					<span class="jddinw si jiao2"></span>
					<span class="jddinw si jiao3"></span>
					<span class="jddinw si jiao4"></span>
				</div>
				<div class="hr-20"></div>
				<div class="digetu xddinw">

					<div id="digetua"></div>
					<span class="jddinw year">( ${year}年 )</span>
					<span class="jddinw si jiao1"></span>
					<span class="jddinw si jiao2"></span>
					<span class="jddinw si jiao3"></span>
					<span class="jddinw si jiao4"></span>
				</div>
				<div class="hr-20"></div>
				<div class="gogl xddinw">
					<h5>预警系统</h5>
					${member_info.PMANALYSIS }
					<span class="jddinw si jiao1"></span>
					<span class="jddinw si jiao2"></span>
					<span class="jddinw si jiao3"></span>
					<span class="jddinw si jiao4"></span>
				</div>
			</div>
		</div>


		<script src="${BASE}/asset/js/script.js"></script>
		<script type="text/javascript" src="${BASE}/asset/js/jquery.mCustomScrollbar.concat.min.js"></script>
		<script>
		(function($){
		$(window).on("load",function(){
		$(".nearcons li .cosmn").mCustomScrollbar({
				theme:"minimal"
			});
		});
		})(jQuery);
	</script>
	<script>
	/*考核情况*/
        var myChart = echarts.init(document.getElementById('khqing'));
        var option = {
            title: {
                text: '考核情况:',
                top:10,
                textStyle:{
                	fontWeight:'100',
                	fontSize:18,
                	color:'#ff5858'
                }
            },
            legend: {
            	orient: 'vertical',
        		right: 50,
        		bottom: 50,
        		textStyle:{
                	color:'#fff'
                },
                data: ["组织生活:${singleCheck.FRACTION_ZZSH}","学习教育:${singleCheck.FRACTION_XXJY}","战斗力:${singleCheck.FRACTION_ZDL}","影响力:${singleCheck.FRACTION_YXL}"]
            },
            series: [{
                name: '考核情况',
                type: 'pie',
                radius : ['40%', '50%'],
                center:['30%','55%'],
                data: [
                	{value:${singleCheck.FRACTION_ZZSH},name:'组织生活:${singleCheck.FRACTION_ZZSH}'},
                	{value:${singleCheck.FRACTION_XXJY},name:'学习教育:${singleCheck.FRACTION_XXJY}'},
                	{value:${singleCheck.FRACTION_ZDL},name:'战斗力:${singleCheck.FRACTION_ZDL}'},
                	{value:${singleCheck.FRACTION_YXL},name:'影响力:${singleCheck.FRACTION_YXL}'}
                ]
            }]
        };

        myChart.setOption(option);
		/*考核情况月趋势*/

		var myChart = echarts.init(document.getElementById('digetu'));
        var option = {
	        	title: {
	                text: '考核情况全年趋势',

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
				formatter:'{b}月<br/>{c}分',
						axisPointer:{
							type: 'line'
						}

				},
				grid:{
					 x:40,
					 y:50,
					 width:700
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
// 			        data: [10, 30, 20, 40, 43, 92,],
			        data: [
			        <c:forEach var="check" items="${checklist}" begin="0" end="${month-1}" step="1">
						${check.FRACTION},
					</c:forEach>
					],
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


		/*考核情况月趋势*/

		var myChart = echarts.init(document.getElementById('digetua'));
        var option = {
	        	title: {
	                text: '活动情况本月趋势',

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
			
						axisPointer:{
							type: 'line'
						}

				},
				grid:{
					 x:40,
					 y:50,
					 width:700
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
					data: ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月']
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
			    	name:'每月一考',
			        data: [<c:forEach var="check" items="${learning.online}">
						${check},
					</c:forEach>],
			        type: 'line',
			        itemStyle:{
			        	mormal:{
			        		lineStyle:{
			        			color:'#6f8cff'
			        		}
			        	}
			        },
			        smooth: true
			    },
			    {
			    	name:'自主学习',
// 			    	      [0, 2,  4,  6,  8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30]
			        data: [<c:forEach var="check" items="${learning.zline}">
						${check},
					</c:forEach>],
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
			    	name:'每日一学',
// 			    	      [0, 2,  4,  6,  8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30]
			        data: [<c:forEach var="check" items="${learning.dayline}">
						${check},
					</c:forEach>],
			        type: 'line',
			        itemStyle:{
			        	mormal:{
			        		lineStyle:{
			        			color:'#6f8cff'
			        		}
			        	}
			        }
			        //smooth: true
			    } ]
			};

		myChart.setOption(option);

		</script>
 <script type="text/javascript">
    $(function(){
        $('img').each(function(){
            if($(this).attr('src').length < 1){
                $(this).attr('src','https://gzzhdw.71zhihui.com/zhdw/resource/images/default.jpg')
            }
        });
    })
</script>
<script type="text/javascript">
var tot = ${singleCheck.TOTAL}
	if(tot<20)
		{
		console.log(tot)
		$('.khqing .xingx').append(" <img src='asset/images/huixx1.png' alt=''><img src='asset/images/huixx1.png' alt=''><img src='asset/images/huixx1.png' alt=''><img src='asset/images/huixx1.png' alt=''><img src='asset/images/huixx1.png' alt=''>"); 	
		}
	if(tot>20&&tot<35)
		{
		console.log(tot)
		$('.khqing .xingx').append(" <img src='asset/images/hongxx1.png' alt=''><img src='asset/images/huixx1.png' alt=''><img src='asset/images/huixx1.png' alt=''><img src='asset/images/huixx1.png' alt=''><img src='asset/images/huixx1.png' alt=''>"); 	
		}
	if(tot>35&&tot<40)
		{
		console.log(tot)
		$('.khqing .xingx').append(" <img src='asset/images/hongxx1.png' alt=''><img src='asset/images/banxx1.png' alt=''><img src='asset/images/huixx1.png' alt=''><img src='asset/images/huixx1.png' alt=''><img src='asset/images/huixx1.png' alt=''>"); 	
		}
	if(tot>40&&tot<55)
		{
		console.log(tot)
		$('.khqing .xingx').append(" <img src='asset/images/hongxx1.png' alt=''><img src='asset/images/hongxx1.png' alt=''><img src='asset/images/huixx1.png' alt=''><img src='asset/images/huixx1.png' alt=''><img src='asset/images/huixx1.png' alt=''>"); 	
		}
	if(tot>55&&tot<60)
		{
		console.log(tot)
		$('.khqing .xingx').append(" <img src='asset/images/hongxx1.png' alt=''><img src='asset/images/hongxx1.png' alt=''><img src='asset/images/banxx1.png' alt=''><img src='asset/images/huixx1.png' alt=''><img src='asset/images/huixx1.png' alt=''>"); 	
		}
	if(tot>60&&tot<75)
		{
		console.log(tot)
		$('.khqing .xingx').append(" <img src='asset/images/hongxx1.png' alt=''><img src='asset/images/hongxx1.png' alt=''><img src='asset/images/hongxx1.png' alt=''><img src='asset/images/huixx1.png' alt=''><img src='asset/images/huixx1.png' alt=''>"); 	
		}
	if(tot>75&&tot<80)
		{
		console.log(tot)
		$('.khqing .xingx').append(" <img src='asset/images/hongxx1.png' alt=''><img src='asset/images/hongxx1.png' alt=''><img src='asset/images/hongxx1.png' alt=''><img src='asset/images/banxx1.png' alt=''><img src='asset/images/huixx1.png' alt=''>"); 	
		}
	if(tot>80&&tot<95)
		{
		console.log(tot)
		$('.khqing .xingx').append(" <img src='asset/images/hongxx1.png' alt=''><img src='asset/images/hongxx1.png' alt=''><img src='asset/images/hongxx1.png' alt=''><img src='asset/images/hongxx1.png' alt=''><img src='asset/images/huixx1.png' alt=''>"); 	
		}
	if(tot>95&&tot<100)
		{
		console.log(tot)
		$('.khqing .xingx').append(" <img src='asset/images/hongxx1.png' alt=''><img src='asset/images/hongxx1.png' alt=''><img src='asset/images/hongxx1.png' alt=''><img src='asset/images/hongxx1.png' alt=''><img src='asset/images/banxx1.png' alt=''>"); 	
		}
	if(tot==100)
		{
		console.log(tot)
		$('.khqing .xingx').append(" <img src='asset/images/hongxx1.png' alt=''><img src='asset/images/hongxx1.png' alt=''><img src='asset/images/hongxx1.png' alt=''><img src='asset/images/hongxx1.png' alt=''><img src='asset/images/hongxx1.png' alt=''>"); 	
		}
</script>
	</body>
</html>



