<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="BASE" value="${pageContext.request.contextPath}"/>


<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta charset="utf-8" />
		<title>${comm_inf.name }</title>
		<link rel="stylesheet" type="text/css" href="${BASE}/asset/css/reset.css" />
		<link href="${BASE}/asset/css/animate.css" type="text/css" rel="stylesheet" />
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
		</style>
		<div class="top">
		<a href="${BASE }/login/Return" style="display:  block;height: 50px;width: 140px;position:  fixed;top: 10px;right: 34px;background: url(${BASE}/asset/images/end.png) no-repeat right center;color: #4c4388;line-height: 45px;text-align:  center;font-size: 16px;">返  回</a>
		
			<div class="dsjtit">
				<h3 class="street"><span>${name }</span></h3>
			</div>
		</div>
		<div class="main mxs">
			<div class="xdenmk fl">
				<div class="secretars xddinw">
					<ul>
						<li class="dweisj">
							<h6>党委书记</h6>
							<div class="yigeshuji">
								<div class="bd">
									<ul class="picList">
									<c:choose>
									<c:when test="${fn:length(shuji)==0}">
									<li>
											<div class="pic"><a href="#" ><img src="https://gzzhdw.71zhihui.com/zhdw/resource/images/default.jpg" /></a></div>
											<div class="title"><a href="#" >暂缺</a></div>
										</li>				
									</c:when>
									<c:otherwise>
									
										<li>
											<div class="pic"><a href="${BASE}/party_member_data?code=${shuji.PM_CODE}" ><img src="${shuji.HEAD_IMG}" /></a></div>
											<div class="title">
											<a href="${BASE}/party_member_data?code=${shuji.PM_CODE}" >${shuji.LEADER_NAME}</a>
											
											</div>
										</li>
									</c:otherwise>
									
									</c:choose>
									
									
									

									</ul>
								</div>
							</div>
						</li>
						<li class="dweifu">
							<h6>党委副书记</h6>
							<div class="shujicroll">
								<div class="bd">
									<ul class="picList">
									
									<c:choose>
									<c:when test="${fn:length(fushuji)==0}">
									<li>
											<div class="pic"><a href="#" ><img src="https://gzzhdw.71zhihui.com/zhdw/resource/images/default.jpg" /></a></div>
											<div class="title"><a href="#" >暂缺</a></div>
										</li>				
									</c:when>
									<c:otherwise>
									
									<c:forEach var="memb" items="${fushuji}" begin="0" step="1">
									<li>
											<div class="pic"><a href="${BASE}/party_member_data?code=${memb.PM_CODE }" ><img src="${memb.HEAD_IMG }" /></a></div>
											<div class="title"><a href="${BASE}/party_member_data?code=${memb.PM_CODE }" >${memb.LEADER_NAME}</a></div>
										</li>
									</c:forEach>
									</c:otherwise>
									
									</c:choose>
									
									
										<%-- <li>
											<div class="pic"><a href="#" ><img src="https://gzzhdw.71zhihui.com/zhdw/resource/images/default.jpg" /></a></div>
											<div class="title"><a href="#" >${fushuji}</a></div>
										</li> --%>
										<!-- <li>
											<div class="pic"><a href="#" ><img src="https://gzzhdw.71zhihui.com/zhdw/resource/images/default.jpg" /></a></div>
											<div class="title"><a href="#" >暂缺</a></div>
										</li>
										<li>
											<div class="pic"><a href="#" ><img src="https://gzzhdw.71zhihui.com/zhdw/resource/images/default.jpg" /></a></div>
											<div class="title"><a href="#" >暂缺</a></div>
										</li> -->
									</ul>
								</div>
							</div>
						</li>
						<li class="dweiyuan">
							<h6>党委委员</h6>
							<div class="shujicroll">
								<div class="bd">
									<ul class="picList">
									
									<c:choose>
									<c:when test="${fn:length(dangwei)==0}">
									<li>
											<div class="pic"><a href="#" ><img src="https://gzzhdw.71zhihui.com/zhdw/resource/images/default.jpg" /></a></div>
											<div class="title"><a href="#" >暂缺</a></div>
										</li>				
									</c:when>
									<c:otherwise>
									
									<c:forEach var="memb" items="${dangwei}" begin="0" step="1">
									<li>
											<div class="pic"><a href="${BASE}/party_member_data?code=${memb.PM_CODE }" ><img src="${memb.HEAD_IMG }" /></a></div>
											<div class="title"><a href="${BASE}/party_member_data?code=${memb.PM_CODE }" >${memb.LEADER_NAME}</a></div>
										</li>
									</c:forEach>
									</c:otherwise>
									
									</c:choose>
									
									
									
									
									
									
										<%-- <li>
											<div class="pic"><a href="#" ><img src="https://gzzhdw.71zhihui.com/zhdw/resource/images/default.jpg" /></a></div>
											<div class="title"><a href="#" >${dangwei}</a></div>
										</li> --%>
										<!-- <li>
											<div class="pic"><a href="#" ><img src="https://gzzhdw.71zhihui.com/zhdw/resource/images/default.jpg" /></a></div>
											<div class="title"><a href="#" >暂缺</a></div>
										</li>
										<li>
											<div class="pic"><a href="#" ><img src="https://gzzhdw.71zhihui.com/zhdw/resource/images/default.jpg" /></a></div>
											<div class="title"><a href="#" >暂缺</a></div>
										</li> -->
									</ul>
								</div>
							</div>
						</li>
					</ul>
					<span class="jddinw si jiao1"></span>
					<span class="jddinw si jiao2"></span>
					<span class="jddinw si jiao3"></span>
					<span class="jddinw si jiao4"></span>
				</div>
				<div class="hr-20"></div>
				<div class="dkhequs xddinw">
					<div id="hequs"></div>
					<span class="jddinw painm">当前考核排名：<b>${pank}</b></span>
					<span class="jddinw nuanf">( ${year } )</span>

					<span class="jddinw si jiao1"></span>
					<span class="jddinw si jiao2"></span>
					<span class="jddinw si jiao3"></span>
					<span class="jddinw si jiao4"></span>
				</div>
				<div class="hr-20"></div>
				<div class="dayuankq xddinw">
					<h4>考核成绩靠前党员</h4>
					<ul class="dayuan">
					<c:forEach var="memb_info" items="${excellet}" begin="0" step="1" end='${size}' >
			 			<li>
							<img src="${memb_info.HEARDURL}" alt="">
							<a href="${BASE}/party_member_data?code=${memb_info.PM_CODE}">
							<span title="${memb_info.PO_NAME}">${memb_info.PO_NAME}</span>
							<span>${memb_info.PM_NAME }</span>
							</a>
							<span>${memb_info.PM_SCORE}</span>
						</li>
			 		</c:forEach>
<!-- 						<li> -->
<%-- 							<img src="${BASE}/asset/images/toux1.png" alt=""> --%>
<!-- 							<a href="">刘志鹏</a> -->
<!-- 							<span>86分</span> -->
<!-- 						</li> -->
					</ul>

					<span class="jddinw si jiao1"></span>
					<span class="jddinw si jiao2"></span>
					<span class="jddinw si jiao3"></span>
					<span class="jddinw si jiao4"></span>
				</div>
			</div>
			<div class="xdenmk fr">
				<div class="streetbuildingmap xddinw">
					<div class="builtit jddinw">${comm_inf.name }全域党建图</div>
					<a href="" class="jddinw yuandian animated headquarters" style="top: 280px;left: 477px;">
						<div class="jddinw chom">党组织地址</div>
					</a>
					<a href="" class="jddinw yuandian animated" style="top: 130px;left: 163px;">
						<div class="jddinw chom">党组织地址</div>
					</a>
					<a href="" class="jddinw yuandian animated" style="top: 150px;left: 440px;">
						<div class="jddinw chom">党组织地址</div>
					</a>
					<a href="" class="jddinw yuandian animated" style="top: 342px;left: 465px;">
						<div class="jddinw chom">党组织地址</div>
					</a>
					<a href="" class="jddinw yuandian animated" style="top: 260px;left: 363px;">
						<div class="jddinw chom">党组织地址</div>
					</a>
					<ul class="jddinw">
					<c:forEach var="child_info" items="${list_zz }" >
						<c:choose>
						   <c:when test="${child_info.type_id== '631' || child_info.type_id== '632' || child_info.type_id== '931' || child_info.type_id== '932'}">  
						        <li><a href="${BASE}/Party_brench?code=${child_info.code}" title="${child_info.name}">${child_info.name }</a></li>      
						   </c:when>
						   <c:otherwise> 
						   		<li><a href="${BASE}/General_party_brench?code=${child_info.code}&type=${child_info.type_id}" title="${child_info.name}">${child_info.name }</a></li>   
						   </c:otherwise>
						</c:choose>
						
					</c:forEach>
						
<%-- 						<li><a href="${BASE}/party_branch_bigdata">示例党支部</a></li> --%>
					</ul>
					<span class="jddinw si jiao1"></span>
					
				</div>
				<div class="hr-20"></div>
				<div class="partypic xddinw">

					<div class="picparty">
						<h5>展示图片</h5>
						<div class="bd">
							<ul class="picList">
							
							<c:choose>
						   <c:when test="${fn:length(listsf)==0}">  
						       <li>
									<div class="pic"><a href="" target="_blank"><img src="${BASE}/asset/images/pic.jpg" /></a></div>
									<div class="title"><a href="" target="_blank">效果图1</a></div>
								</li>
								<li>
									<div class="pic"><a href="" target="_blank"><img src="${BASE}/asset/images/pic.jpg" /></a></div>
									<div class="title"><a href="" target="_blank">效果图2</a></div>
								</li>
								<li>
									<div class="pic"><a href="" target="_blank"><img src="${BASE}/asset/images/pic.jpg" /></a></div>
									<div class="title"><a href="" target="_blank">效果图3</a></div>
								</li>
								<li>
									<div class="pic"><a href="" target="_blank"><img src="${BASE}/asset/images/pic.jpg" /></a></div>
									<div class="title"><a href="" target="_blank">效果图4</a></div>
								</li>
								<li>
									<div class="pic"><a href="" target="_blank"><img src="${BASE}/asset/images/pic.jpg" /></a></div>
									<div class="title"><a href="" target="_blank">效果图5</a></div>
								</li>
								<li>
									<div class="pic"><a href="" target="_blank"><img src="${BASE}/asset/images/pic.jpg" /></a></div>
									<div class="title"><a href="" target="_blank">效果图6</a></div>
								</li> 
						   </c:when>
						   <c:otherwise> 
						   		<c:forEach var="dawtp" items="${listsf}">
							
							<li>
									<div class="pic"><a href="${dawtp.P_PATH}" target="_blank"><img src="${dawtp.P_PATH}" /></a></div>
									<div class="title" style="width: 205px;line-height: 24px;text-align: left;"><a href="${dawtp.P_PATH}" target="_blank">${dawtp.P_NAME}</a></div>
								</li>
							
							</c:forEach>
						   </c:otherwise>
						</c:choose>
							
							
							
							
							
							
							
								<%-- <li>
									<div class="pic"><a href="" target="_blank"><img src="${BASE}/asset/images/pic.jpg" /></a></div>
									<div class="title"><a href="" target="_blank">效果图1</a></div>
								</li>
								<li>
									<div class="pic"><a href="" target="_blank"><img src="${BASE}/asset/images/pic.jpg" /></a></div>
									<div class="title"><a href="" target="_blank">效果图2</a></div>
								</li>
								<li>
									<div class="pic"><a href="" target="_blank"><img src="${BASE}/asset/images/pic.jpg" /></a></div>
									<div class="title"><a href="" target="_blank">效果图3</a></div>
								</li>
								<li>
									<div class="pic"><a href="" target="_blank"><img src="${BASE}/asset/images/pic.jpg" /></a></div>
									<div class="title"><a href="" target="_blank">效果图4</a></div>
								</li>
								<li>
									<div class="pic"><a href="" target="_blank"><img src="${BASE}/asset/images/pic.jpg" /></a></div>
									<div class="title"><a href="" target="_blank">效果图5</a></div>
								</li>
								<li>
									<div class="pic"><a href="" target="_blank"><img src="${BASE}/asset/images/pic.jpg" /></a></div>
									<div class="title"><a href="" target="_blank">效果图6</a></div>
								</li> --%>
							</ul>
						</div>
					</div>


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
		$(".streetbuildingmap ul").mCustomScrollbar({
				theme:"minimal"
			});
		});
		})(jQuery);
	</script>
	<script type="text/javascript">
		 jQuery(".shujicroll").slide({mainCell:".bd ul",autoPage:true,effect:"topLoop",autoPlay:true,vis:1});
	</script>
	<script type="text/javascript">
	jQuery(".picparty").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"left",autoPlay:true,vis:4,trigger:"click"});
	</script>
		<script>
		var myChart = echarts.init(document.getElementById('hequs'));
        var option = {
	        	title: {
	                text: '党委考核趋势',

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
					formatter: '得分:{c}',
					 axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                            type : 'line'        // 默认为直线，可选为：'line' | 'shadow'
                        }

				},
				grid:{
					 x:40,
					 y:50,
					 width:850


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
			 //       data: [10,30, 20, 40, 43, 52, 62, 70, 43,88, 40, 43, 52],
			 		data:[
			 		<c:forEach var="check_info" items="${checklist}" begin="0" step="1" end='${month}' >
			 			${check_info.FRACTION},
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
		</script>
      <script type="text/javascript">
    $(function(){
        $('.dayuankq ul li img').each(function(){
            if($(this).attr('src').length < 1){
                $(this).attr('src','https://gzzhdw.71zhihui.com/zhdw/resource/images/default.jpg')
            }
            if($(this).attr('src')=='unknown'){
                $(this).attr('src','https://gzzhdw.71zhihui.com/zhdw/resource/images/default.jpg')
            }
        });
        
        
        
        var t1 = setTimeout(function() {
        	$('.dayuankq ul li img').each(function(){
        	 if($(this).attr('src').length < 1){
        	     $(this).attr('src','https://gzzhdw.71zhihui.com/zhdw/resource/images/default.jpg')
        		}
        	});
        	 $('.secretars ul li img').each(function(){
        	     if($(this).attr('src')==''){
        	         $(this).attr('src','https://gzzhdw.71zhihui.com/zhdw/resource/images/default.jpg')
        		}
        	});
        	 console.log(1);
        	clearTimeout(t1);
        },1000);
		            
    });
  
</script>
<script>
<script type="text/javascript">
$.ajax({
   url:'<%=path%>/login/LoginGetdata',
   type:"POST",
   dataType:"json", 
   data : {
   	
   },
   success:function(data){

   	 console.log(data);
      
   },error:function(err){
   	console.log("error")
   }
});



</script>
		</script>
	</body>
</html>



