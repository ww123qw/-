<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:set var="BASE" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta charset="utf-8" />
		<title>选择党工委</title>
		<link rel="stylesheet" type="text/css" href="${BASE}/asset/css/reset.css" />
		<link href="${BASE}/asset/css/css.css" type="text/css" rel="stylesheet" />
		<link href="${BASE}/asset/css/jquery.mCustomScrollbar.css" type="text/css" rel="stylesheet" />
		<script src="${BASE}/asset/js/jquery.js"></script>
		<script type="text/javascript" src="${BASE}/asset/js/SuperSlide.js"></script>
		<script src="${BASE}/asset/js/echarts.common.min.js"></script>
		<!--[if IE 6]>
		<script src="js/P0w26re5T_DD_belatedPNG_0.0.8a-min.js"></script>
		<script type="text/javascript">
		DD_belatedPNG.fix('.hongqi,.nav li a');
		</script>
		<![endif]-->
	</head>
	<body>
	<security:user>
		<style>
		 body{overflow: hidden; background: url(${BASE}/asset/images/xzdwbj.jpg) no-repeat top center;} 
		</style>
		<div class="zwdt">
		<a href="${BASE}/login/layout" style="display:  block;height: 50px;width: 140px;position:  fixed;top: 10px;right: 34px;background: url(${BASE}/asset/images/end1.png) no-repeat right center;color: #fff;line-height: 45px;text-align:  center;font-size: 16px;">退出</a>
			<div class="hr-75"></div>
			<div class="dwtoou">
				<a href="${BASE}/district_committee_bigdata?code=360702"></a>
			</div>
			
			<div class="hr-20"></div>
			<div class="fl zzx">
				<div class="momk">
					<div class="hetit">镇(街道)党委</div>
					<ul class="cx">
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702001&type=611">水南镇党委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702028&type=611">水西镇党委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702026&type=611">沙石镇党委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702006&type=611">水东镇党委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702005&type=611">沙河镇党委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702024&type=612">解放街道党工委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702020&type=612">南外街道党工委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702003&type=612">赣江街道党工委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702015&type=612">东外街道党工委</a></li>
					</ul>
				</div>
				<div class="hr-20"></div>
				<div class="momk">
					<div class="hetit">卫生教育</div>
					<ul class="cx">
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702008&type=611">市立医院党委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702007&type=611">教育党委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702021&type=611">卫计委党委</a></li>
					</ul>
				</div>
				<div class="hr-20"></div>
				<div class="momk">
					<div class="hetit">国有企业</div>
					<ul class="cx">
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702009&type=611">国资公司党委</a></li>
						
					</ul>
				</div>
			</div>
			<div class="fr yyx">
					<div class="momk">
					<div class="hetit">区直机关</div>
					<ul class="cx" style="height: 300px;">
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702014&type=612">区直机关工委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702027&type=611">文广局党委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702025&type=611">人力资源和社会保障局党委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702023&type=611">城管局党委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702022&type=611">市场和质量监督管理局党委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702018&type=611">商务局党委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702016&type=611">城乡建设局党委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702013&type=611">公安章贡分局党委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702012&type=611">交通和运输管理局党委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702011&type=611">农业和粮食局党委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702004&type=611">税务局党委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702017&type=611">章贡高新区党委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702030&type=611">国有资产监督管理局党委</a></li>
					</ul>
				</div>
				<div class="hr-20"></div>
				
				<div class="momk">
					<div class="hetit">两新组织</div>
					<ul class="cx">
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702002&type=611">非公有制经济组织党委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702010&type=611">社会组织党委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702019&type=611">赣发公司党委</a></li>
					</ul>
				</div>
			</div>
		</div>
	</security:user>
	</body>
</html>










