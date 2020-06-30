<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:set var="BASE" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta charset="utf-8" />
		<title>${comm_inf.name }</title>
		<link rel="stylesheet" type="text/css" href="${BASE}/asset/css/reset.css" />
		<link href="${BASE}/asset/css/css.css" type="text/css" rel="stylesheet" />
		<link href="${BASE}/asset/css/jquery.mCustomScrollbar.css" type="text/css" rel="stylesheet" />
		<script src="${BASE}/asset/js/jquery.js"></script>

		<script type="text/javascript" src="${BASE}/asset/js/SuperSlide.js"></script>
		<script src="${BASE}/asset/js/echarts.common.min.js"></script>
		<!--[if IE 6]>
		<script src="js/P0w26re5T_DD_belatedPNG_0.0.8a-min.js"></script>
		<script type="text/javascript">
		DD_belatedPNG.fix('.mues li,.ycamk,.ycamk .end');
		</script>
		<![endif]-->
	</head>
	<body>
		<style>body{background: url(${BASE}/asset/images/sqzb.jpg) no-repeat top center;}</style>
		<ul class="mues">
			<li><a href="javascript:;">党组织架构</a></li>
			<li><a href="javascript:;">党员墙</a></li>
			<li><a href="javascript:;">考核及排名</a></li>
			<li><a href="javascript:;">支部党员考核排名</a></li>
			<li><a href="javascript:;">视频展示</a></li>
		</ul>
		<!-- 党组织架构 -->
		<div class="ycamk organizational"><span class="end"></span>
		<a href="javascript:history.go(-1)" style="display:  block;height: 50px;width: 140px;position:  fixed;top: 10px;right: 34px;background: url(${BASE}/asset/images/end1.png) no-repeat right center;color: #fff;line-height: 45px;text-align:  center;font-size: 16px;">返  回</a>
			<div class="organi">
				<h4>党组织架构</h4>
				<ul>
				<c:forEach var="curr_org_name" items="${org_tree}" begin="0" step="1" >
				
					<li><a href="">${curr_org_name}</a></li>
				</c:forEach>
				</ul>
			</div>
		</div>
		<!-- 党员墙 -->
		<div class="ycamk partywall"><span class="end"></span>
			<div class="wall">
				<h4>本支部党员</h4>
				<ul>
				<c:forEach var="memb_info" items="${memb_list}" begin="0" step="1" >
						<li>
							<a href="${BASE}/party_member_data?code=${memb_info.code}">
							<img src="${memb_info.headurl}" width="75" height="85"  alt="">
							<h5>${memb_info.name}</h5>
							<span>普通党员</span>
							</a>
						</li>
			 	</c:forEach>
				
<!-- 					<li> -->
<%-- 						<a href="${BASE}/party_member_data"> --%>
<%-- 						<img src="${BASE}/asset/images/dangyuan.jpg" alt=""> --%>
<!-- 						<h5>黄兰兰</h5> -->
<!-- 						<span>普通党员</span> -->
<!-- 						</a> -->
<!-- 					</li> -->
				</ul>
			</div>
		</div>
		<!-- 考核情况 -->
		<div class="ycamk branchasse"><span class="end"></span>

			<div class="branch">
				<h4>支部考核排名</h4>
				<h5><b>当前排名:</b> <span>${org.pank }</span></h5>
				<div id="branch"></div>
				<span class="fraction">${org_check.TOTAL }分</span>
			</div>

		</div>
		<!-- 党员考核排名 -->
		<div class="ycamk assessmentsort"><span class="end"></span>
			<div class="sort">
				<h4>党员考核排名</h4>
				<ul>
				<c:forEach var="memb_info" items="${memb_list1}" begin="0" step="1" >
					 <li>
						<span class="toux fl"><img src="${memb_info.HEARDURL}" width="50" height="60" alt=""></span>
						<a href="${BASE}/party_member_data?code=${memb_info.PM_CODE}" class="name fl">${memb_info.PM_NAME}</a>
						<span class="order fr">排名：${memb_info.PM_RANK }</span>
						<span class="fraction fr">考核分：${memb_info.PM_SCORE }</span>
					 </li>
			 	</c:forEach>
					
				</ul>
			</div>
		</div>
		<!-- 视频展示 -->
		<div class="ycamk videos"><span class="end"></span>
			<div class="video">
				<h4>视频展示</h4>
				<ul id="video">
					<li><a href="">
						<div class="sp"><img src="${BASE}/asset/images/shipin.jpg" alt=""></div>
						<h5>实例视频</h5>
						</a>
					</li>
					<li><a href="">
						<div class="sp"><img src="${BASE}/asset/images/shipin.jpg" alt=""></div>
						<h5>实例视频</h5>
						</a>
					</li>
					<li><a href="">
						<div class="sp"><img src="${BASE}/asset/images/shipin.jpg" alt=""></div>
						<h5>实例视频</h5>
						</a>
					</li>
					<li><a href="">
						<div class="sp"><img src="${BASE}/asset/images/shipin.jpg" alt=""></div>
						<h5>实例视频</h5>
						</a>
					</li>
					<li><a href="">
						<div class="sp"><img src="${BASE}/asset/images/shipin.jpg" alt=""></div>
						<h5>实例视频</h5>
						</a>
					</li>
					<li><a href="">
						<div class="sp"><img src="${BASE}/asset/images/shipin.jpg" alt=""></div>
						<h5>实例视频</h5>
						</a>
					</li>
					<li><a href="">
						<div class="sp"><img src="${BASE}/asset/images/shipin.jpg" alt=""></div>
						<h5>实例视频</h5>
						</a>
					</li>
					<li><a href="">
						<div class="sp"><img src="${BASE}/asset/images/shipin.jpg" alt=""></div>
						<h5>实例视频</h5>
						</a>
					</li>
					<li><a href="">
						<div class="sp"><img src="${BASE}/asset/images/shipin.jpg" alt=""></div>
						<h5>实例视频</h5>
						</a>
					</li>
					<li><a href="">
						<div class="sp"><img src="${BASE}/asset/images/shipin.jpg" alt=""></div>
						<h5>实例视频</h5>
						</a>
					</li>
				</ul>



			</div>
		</div>
		<script type="text/javascript" src="${BASE}/asset/js/jquery.mCustomScrollbar.concat.min.js"></script>
		<script>
		(function($){
			$(window).on("load",function(){
			$("#video").mCustomScrollbar({
					theme:"minimal"
				});
			});
		})(jQuery);
		</script>
		<script src="${BASE}/asset/js/script.js"></script>
		<script>
        var myChart = echarts.init(document.getElementById('branch'));
        var option = {
            title: {
                text: '考核情况:',
                top:25,
                textStyle:{
                	fontWeight:'100',
                	fontSize:16,
                	color:'#fff'
                }
            },
            legend: {
            	orient: 'vertical',
        		right: 50,
        		bottom: 90,
        		textStyle:{
                	color:'#fff'
                },
                data: ["参与组织生活:${org_check.FRACTION_ZZSH}","凝聚力:${org_check.FRACTION_NJL}","战斗力:${org_check.FRACTION_ZDL}",]
            },
            series: [{
                name: '考核情况',
                type: 'pie',
                radius : ['30%', '40%'],
                center:['30%','50%'],
                data: [
                	{value:${org_check.FRACTION_ZZSH},name:'参与组织生活:${org_check.FRACTION_ZZSH}'},
                	{value:${org_check.FRACTION_NJL},name:'凝聚力:${org_check.FRACTION_NJL}'},
                	{value:${org_check.FRACTION_ZDL},name:'战斗力:${org_check.FRACTION_ZDL}'},
                ]
            }]
        };
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);

		</script>
		<script src="${BASE}/asset/js/script.js"></script>
		<script type="text/javascript" src="${BASE}/asset/js/jquery.mCustomScrollbar.concat.min.js"></script>
		<script>
			(function($){
			$(window).on("load",function(){
			$(".wall ul,.sort").mCustomScrollbar({
					theme:"minimal"
				});
			});
			})(jQuery);
		</script>
		 <script type="text/javascript">
		 $(function(){
		        $('img').each(function(){
		            if($(this).attr('src')=='null'||$(this).attr('src').length<1){
		                $(this).attr('src','https://gzzhdw.71zhihui.com/zhdw/resource/images/default.jpg')
		            }
		        });
		    })
</script>
	</body>
</html>



