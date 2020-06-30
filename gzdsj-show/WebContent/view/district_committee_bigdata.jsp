<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:set var="BASE" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta charset="utf-8" />
		<title>章贡区党建大数据展示中心</title>
		<link rel="stylesheet" type="text/css" href="${BASE}/asset/css/reset.css" />
		<link href="${BASE}/asset/css/css.css" type="text/css" rel="stylesheet" />
		<link href="${BASE}/asset/css/jquery.mCustomScrollbar.css" type="text/css" rel="stylesheet" />
		<script src="${BASE}/asset/js/jquery.js"></script>
		<script type="text/javascript" src="${BASE}/asset/js/SuperSlide.js"></script>
		<script src="${BASE}/asset/js/echarts.common.min.js"></script>
		<!--[if IE 6]>
		<script src="js/P0w26re5T_DD_belatedPNG_0.0.8a-min.js"></script>
		<script type="text/javascript">
		DD_belatedPNG.fix('.jiao1,.jiao2,.jiao3,.jiao4,.shqk ul li span,.dsjtit h3,.dsjtit h3 span,.dsdzsyshu ul li .zhixian');
		</script>
		<![endif]-->
	</head>
	<body>
		<style>
		 body{overflow: hidden; background: #060214}
		</style>
		<div class="top">
			<a href="javascript:history.go(-1)" style="display:  block;height: 50px;width: 140px;position:  fixed;top: 10px;right: 34px;background: url(${BASE}/asset/images/end.png) no-repeat right center;color: #4c4388;line-height: 45px;text-align:  center;font-size: 16px;">返  回</a>
		
			<div class="dsjtit">
				<h3><span>章贡区党建大数据展示中心</span></h3>
			</div>
		</div>
		<div class="main mxs">
			<div class="jcnav xddinw fl">
				<h4>基层党组织</h4>
				<div class="btit">
					<span class="tname">党委名称</span>
					<span class="ranking">排名</span>
					<span class="ranch">分数</span>
				</div>
				<ul>
				<c:forEach var="comm_info" items="${comm_list}" >
					<li><a href="${BASE}/committee_bigdata/committee_jsp?code=${comm_info.PO_CODE}"><span class="tname">${comm_info.PO_NAME }</span> <span class="rking">${comm_info.PO_RANK}</span><span class="ranch">${comm_info.PO_SCORE}</span></a></li>
				</c:forEach>
					

				</ul>
				<span class="jddinw si jiao1"></span>
				<span class="jddinw si jiao2"></span>
				<span class="jddinw si jiao3"></span>
				<span class="jddinw si jiao4"></span>
			</div>
			<div class="shuj fr">
				<div class="fl">
					<div class="dsdzsyshu xddinw">
						<ul>
							<li>
								<span class="btie">党(工)委数</span>
								<span class="geshu"> ${Party_committee.PO_SENIOR_NUMBER }</span>
								<div class="jddinw xxshuju">
									<img src="${BASE}/asset/images/xa0.jpg" alt="">
									<div class="detailed">
										<div class="sjmky">
											<h6>类型</h6>
											<div class="tbk fl" id="dangweiChat"></div>
											<ul class="lias fr">
												<li>镇（街道）党委：9个</li>
												<li>区直机关党委：13个</li>
												<li>卫生教育党委：3个</li>
												<li>国有企业党委：1个</li>
												<li>两新组织党委：3个</li>
											</ul>
										</div>
<!-- 										<div class="sjmky"> -->
<!-- 											<h6>学历</h6> -->
<!-- 											<div class="tbk fl" id="xuel"></div> -->
<!-- 											<ul class="lias fr"> -->
<!-- 												<li>初中及以下：4202名</li> -->
<!-- 												<li>中专、高中、中技：8348名</li> -->
<!-- 												<li>大专及以上：6546名</li> -->
<!-- 											</ul> -->
<!-- 										</div> -->
<!-- 										<div class="sjmky"> -->
<!-- 											<h6>职业</h6> -->
<!-- 											<div class="tbk fl" id="zhiy"></div> -->
<!-- 											<ul class="lias fr"> -->
<!-- 												<li>公职人员：4202名</li> -->
<!-- 												<li>农牧渔民：8348名</li> -->
<!-- 												<li>离退休：6546名</li> -->
<!-- 												<li>非公组织：184名</li> -->
<!-- 												<li>其它职业：1092名</li> -->
<!-- 											</ul> -->
<!-- 										</div> -->
<!-- 										<div class="sjmky"> -->
<!-- 											<h6>性别</h6> -->
<!-- 											<div class="tbk fl" id="xinb"></div> -->
<!-- 											<ul class="lias fr"> -->
<!-- 												<li>男党员：4202名</li> -->
<!-- 												<li>女党员：8348名</li> -->
<!-- 											</ul> -->
<!-- 										</div> -->
<!-- 										<div class="sjmky"> -->
<!-- 											<h6>民族</h6> -->
<!-- 											<div class="tbk fl" id="minz"></div> -->
<!-- 											<ul class="lias fr"> -->
<!-- 												<li>少数民族：4202名</li> -->
<!-- 												<li>汉族：8348名</li> -->
<!-- 											</ul> -->
<!-- 										</div> -->
									</div>
								</div>
						
							</li>
							<li class="z">
								<span class="btie">支部数</span>
								<span class="geshu"> ${Party_committee.PO_BRANCH_NUMBER }</span>
								<span class="zhixian"></span>
								<div class="jddinw xxshuju" style="left: -311px;">
									<img src="${BASE}/asset/images/xa2.jpg" alt="">
									<div class="detailed">
										<div class="sjmky" style="height: 500px">
											<h6>类型</h6>
											<div class="tbk fl" id="branchChart"></div>
											<ul class="lias fr">
											<c:forEach var="memb_info" items="${chiar}">
											<li>${memb_info.PO_PROPERTY}：${memb_info.PO_NUMBER}个</li>
											
											</c:forEach>
												<!-- <li>其他：972个</li>
												<li>城市社区：14个</li>
												<li>建制村：4个</li> -->
											</ul>
										</div>
									</div>
								</div>
						
							</li>
							<li>
								<span class="btie">党员数</span>
								<span class="geshu">${Party_committee.PM_NUMBER }</span>
								<span class="zhixian"></span>
								<div class="jddinw xxshuju" style="left: -622px;">
									<img src="${BASE}/asset/images/xa1.jpg" alt="">
									<div class="detailed">
										<div class="sjmky">
											<h6>年龄</h6>
											<div class="tbk fl" id="nianl"></div>
											<ul class="lias fr">
												<li>35岁以下：${age.ages}名</li>
												<li>36至60岁：${age.agel}名</li>
												<li>61岁以上：${age.agec}名</li>
											</ul>
										</div>
										<div class="sjmky">
											<h6>学历</h6>
											<div class="tbk fl" id="xuel"></div>
											<ul class="lias fr">
												<li>初中及以下：${education.educationc }名</li>
												<li>中专、高中、中技：${education.educationz }名</li>
												<li>大专及以上：${education.educationd }名</li>
												<li>其他：${education.educationq }名</li>
											</ul>
										</div>
										<div class="sjmky">
											<h6>职业</h6>
											<div class="tbk fl" id="zhiy"></div>
											<ul class="lias fr">
												<li>公职人员：${career.careerdatag }名</li>
												<li>农牧渔民：${career.careerdatan }名</li>
												<li>离退休：${career.careerdatal }名</li>
												<li>非公组织：${career.careerdataf }名</li>
												<li>其它职业：${career.careerdataq }名</li>
											</ul>
										</div>
										<div class="sjmky">
											<h6>性别</h6>
											<div class="tbk fl" id="xinb"></div>
											<ul class="lias fr">
												<li>男党员：${sex.Man }名</li>
												<li>女党员：${sex.Woman }名</li>
											</ul>
										</div>
										<div class="sjmky">
											<h6>民族</h6>
											<div class="tbk fl" id="minz"></div>
											<ul class="lias fr">
												<li>少数民族：${ethnic.ethnics }名</li>
												<li>汉族：${ethnic.ethnich }名</li>
											</ul>
										</div>

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
					<div class="dangzbmap xddinw">
						<div class="hr-25"></div>
						<img src="${BASE}/asset/images/map1.png" alt="" width="565" height="713" border="0" usemap="#Map" >
						<map name="Map" id="Map">
						  <area shape="poly" coords="52,192,39,175,45,173,39,160,17,138,11,132,26,110,37,98,40,83,39,69,45,60,58,65,74,57,86,55,108,48,126,49,137,40,152,37,161,35,165,34,172,40,179,46,187,49,202,46,211,45,221,50,228,47,226,32,227,22,238,14,241,23,253,43,257,61,267,83,279,85,259,108,280,143,288,149,306,139,327,146,309,170,308,233,302,249,272,266,266,249,273,230,282,216,276,200,264,174,251,175,239,149,230,135,216,138,190,150,171,136,148,117,141,123,137,138,144,147,151,166,146,190,149,197,135,227,129,233,120,240,107,237,98,240,76,228,85,210,82,194,80,184,75,172,69,161,59,171" href="#" class="shuixi" />
						  <area shape="poly" coords="284,84,275,93,266,103,274,124,280,131,285,140,298,136,313,133,322,138,330,137,335,134,339,126,345,117,351,109,351,97,343,92,330,88,308,84" href="#" class="jingkaiq" />
						  <area shape="poly" coords="150,120,142,130,149,135,148,142,158,157,159,167,154,176,155,191,149,208,143,212,144,223,135,233,131,242,127,248,120,247,115,244,109,238,107,243,88,254,109,260,139,256,153,257,166,244,178,244,191,241,203,244,230,247,260,257,263,260,261,253,261,241,268,228,275,211,271,200,264,183,241,169,241,152,233,146,228,140,215,143,207,147,194,153,184,152,173,148,169,143,160,125,159,130" href="#"  class="hubian"/>
						  <area shape="poly" coords="338,132,314,162,312,186,311,224,339,259,395,291,431,294,424,281,426,274,427,267,418,267,411,256,410,240,402,222,403,213,390,217,384,222,375,224,367,227,362,226,360,213,361,194,354,189,356,182,345,176,352,163,357,149,343,137" href="#" class="shuidong" />
						  <area shape="poly" coords="312,233,297,258,307,267,331,260,321,244" href="#" class="jiefang"/>
						  <area shape="poly" coords="74,230,67,241,63,258,67,276,86,277,86,297,97,310,108,325,115,337,133,345,148,347,164,360,162,386,179,409,192,422,197,430,204,438,209,427,207,406,214,383,233,381,243,395,265,402,219,333,207,327,193,306,196,297,189,282,177,256,167,252,161,262,147,265,136,262,118,265,106,267,91,262,83,253,86,244,84,235" href="#" class="panlong" />
						  <area shape="poly" coords="176,249,183,257,184,271,199,288,203,300,194,308,205,323,220,326,228,340,233,349,244,363,252,365,262,353,268,342,279,322,255,329,246,317,251,311,257,296,260,277,253,270,240,252,216,252,189,244" href="#"  class="huangjinl"/>
						  <area shape="poly" coords="273,297,281,301,292,299,314,303,309,294,305,285,301,266,293,263,279,261,267,271,266,287" href="#"  class="nanwaijiedao"/>
						  <area shape="poly" coords="306,268,309,281,343,281,352,273,335,263" href="#"  class="ganjiangjiedao"/>
						  <area shape="poly" coords="266,297,283,303,303,303,334,331,345,356,343,363,315,381,292,397,272,405,262,388,249,368,274,342,281,325,267,312,264,315" href="#" class="shuinan" />
						  <area shape="poly" coords="316,286,318,299,319,308,339,328,354,312,371,310,374,301,384,305,394,298,358,279" href="#" class="dongwai" />

						  <area shape="poly" coords="342,329,356,314,374,311,384,305,396,296,436,297,472,285,496,261,504,251,519,262,543,272,547,287,535,310,526,348,545,376,551,384,542,410,526,417,514,434,511,449,497,442,495,431,488,421,470,415,469,400,451,401,442,406,430,404,421,402,407,400,396,407,376,399,370,360,350,349" href="#" class="shahez" />
						  <area shape="poly" coords="351,357,281,410,285,433,253,455,241,466,237,489,251,511,258,518,267,537,265,556,265,572,274,605,291,619,315,601,328,620,340,637,357,646,357,623,376,628,387,654,392,673,418,664,419,633,436,639,453,619,477,602,475,586,487,571,457,554,437,535,445,513,465,496,486,479,496,456,482,433,461,409,412,413,396,417,369,401,361,368" href="#" class="shashiz" />
						  <area shape="poly" coords="220,394,220,387,231,388,234,397,236,403,249,406,267,409,273,420,274,434,262,442,242,449,239,448,230,447,221,444,213,444,217,417,212,410,215,398" href="#" class="huangjinl" />
						  <area shape="poly" coords="88,377,135,356,160,355,160,380,157,391,169,396,174,402,180,408,182,417,189,427,199,436,215,449,228,449,235,457,239,472,233,485,238,499,245,513,251,523,258,533,262,540,261,555,261,573,264,592,273,607,285,617,286,633,268,647,261,651,249,646,230,604,215,583,210,571,212,559,193,559,178,559,164,543,157,531,158,510,144,493,131,469,129,459,149,452,145,442,124,448,106,453,107,450,104,439,110,423,121,420,139,411,139,399,129,394,110,393,98,389,95,386" href="#" />
						  <area shape="poly" coords="42,500,54,506,93,497,110,505,110,521,118,532,113,549,113,563,112,577,125,583,115,600,153,624,170,634,184,665,189,685,199,695,222,695,232,681,236,664,240,642,235,621,220,596,202,580,201,570,192,567,175,568,171,558,158,552,155,535,153,509,137,498,127,480,124,460,111,462,101,456,74,464,62,462,50,473" href="#" class="tankou" />
						</map>
						

						<span class="jddinw si jiao1"></span>
						<span class="jddinw si jiao2"></span>
						<span class="jddinw si jiao3"></span>
						<span class="jddinw si jiao4"></span>
					</div>
						<!-- maptan -->
						<div class="dituku shuixi" />
							<h5>水西镇<span>X</span></h5>
							<div class="hr-5"></div>
							<div class="xinq">
								<div class="zhibus">支部数:<span>${Party_committee.num["360702028"].zb_num}</span>个</div>
								<div class="dyuans">党员数:<span>${Party_committee.num["360702028"].pm_num } </span>人</div>
							</div>
						</div>
						<div class="dituku jingkaiq" />
							<h5>章贡经济开发区<span>X</span></h5>
							<div class="hr-5"></div>
							<div class="xinq">
								<div class="zhibus">支部数:<span>${Party_committee.num["360702017"].zb_num}</span>个</div>
								<div class="dyuans">党员数:<span>${Party_committee.num["360702017"].pm_num }</span>人</div>
							</div>
						</div>
						<div class="dituku hubian"/>
							<h5>湖边镇<span>X</span></h5>
							<div class="hr-5"></div>
							<div class="xinq">
								<div class="zhibus">支部数:<span>0</span>个</div>
								<div class="dyuans">党员数:<span>0</span>人</div>
							</div>
						</div>
						<div class="dituku shuidong" />
							<h5>水东镇<span>X</span></h5>
							<div class="hr-5"></div>
							<div class="xinq">
								<div class="zhibus">支部数:<span>${Party_committee.num["360702006"].zb_num }</span>个</div>
								<div class="dyuans">党员数:<span>${Party_committee.num["360702006"].pm_num }</span>人</div>
							</div>
						</div>
						<div class="dituku jiefang"/>
							<h5>解放街道<span>X</span></h5>
							<div class="hr-5"></div>
							<div class="xinq">
								<div class="zhibus">支部数:<span>${Party_committee.num["360702024"].zb_num }</span>个</div>
								<div class="dyuans">党员数:<span>${Party_committee.num["360702024"].pm_num  }</span>人</div>
							</div>
						</div>
						<div class="dituku panlong" />
							<h5>蟠龙镇<span>X</span></h5>
							<div class="hr-5"></div>
							<div class="xinq">
								<div class="zhibus">支部数:<span>0</span>个</div>
								<div class="dyuans">党员数:<span>0</span>人</div>
							</div>
						</div>
						<div class="dituku huangjinl"/>
							<h5>黄金岭街道<span>X</span></h5>
							<div class="hr-5"></div>
							<div class="xinq">
								<div class="zhibus">支部数:<span>0</span>个</div>
								<div class="dyuans">党员数:<span>0</span>人</div>
							</div>
						</div>
						<div class="dituku nanwaijiedao"/>
							<h5>南外街道<span>X</span></h5>
							<div class="hr-5"></div>
							<div class="xinq">
								<div class="zhibus">支部数:<span>${Party_committee.num["360702020"].zb_num}</span>个</div>
								<div class="dyuans">党员数:<span>${Party_committee.num["360702020"].pm_num}</span>人</div>
							</div>
						</div>
						<div class="dituku ganjiangjiedao"/>
							<h5>赣江街道<span>X</span></h5>
							<div class="hr-5"></div>
							<div class="xinq">
								<div class="zhibus">支部数:<span>${Party_committee.num["360702003"].zb_num }</span>个</div>
								<div class="dyuans">党员数:<span>${Party_committee.num["360702003"].pm_num }</span>人</div>
							</div>
						</div>
						<div class="dituku shuinan" />
							<h5>水南镇<span>X</span></h5>
							<div class="hr-5"></div>
							<div class="xinq">
								<div class="zhibus">支部数:<span>${Party_committee.num["360702001"].zb_num }</span>个</div>
								<div class="dyuans">党员数:<span>${Party_committee.num["360702001"].pm_num }</span>人</div>
							</div>
						</div>
						<div class="dituku dongwai" />
							<h5>东外街道<span>X</span></h5>
							<div class="hr-5"></div>
							<div class="xinq">
								<div class="zhibus">支部数:<span>${Party_committee.num["360702015"].zb_num }</span>个</div>
								<div class="dyuans">党员数:<span>${Party_committee.num["360702015"].pm_num }</span>人</div>
							</div>
						</div>
						<div class="dituku shahez" />
							<h5>沙河镇<span>X</span></h5>
							<div class="hr-5"></div>
							<div class="xinq">
								<div class="zhibus">支部数:<span>${Party_committee.num["360702005"].zb_num  }</span>个</div>
								<div class="dyuans">党员数:<span>${Party_committee.num["360702005"].pm_num  }</span>人</div>
							</div>
						</div>
						<div class="dituku shashiz" />
							<h5>沙石镇<span>X</span></h5>
							<div class="hr-5"></div>
							<div class="xinq">
								<div class="zhibus">支部数:<span>${Party_committee.num["360702026"].zb_num  }</span>个</div>
								<div class="dyuans">党员数:<span>${Party_committee.num["360702026"].pm_num }</span>人</div>
							</div>
						</div>
						<div class="dituku huangjinl" />
							<h5>黄金岭街道<span>X</span></h5>
							<div class="hr-5"></div>
							<div class="xinq">
								<div class="zhibus">支部数:<span>0</span>个</div>
								<div class="dyuans">党员数:<span>0</span>人</div>
							</div>
						</div>
						<div class="dituku tandong" />
							<h5>潭东镇<span>X</span></h5>
							<div class="hr-5"></div>
							<div class="xinq">
								<div class="zhibus">支部数:<span>0</span>个</div>
								<div class="dyuans">党员数:<span>0</span>人</div>
							</div>
						</div>
						<div class="dituku tankou" />
							<h5>潭口镇<span>X</span></h5>
							<div class="hr-5"></div>
							<div class="xinq">
								<div class="zhibus">支部数:<span>0</span>个</div>
								<div class="dyuans">党员数:<span>0</span>人</div>
							</div>
						</div>
				</div>
				<div class="fr">
					<div class="shqk xddinw">
						<h4>党组织生活正常情况</h4>
						<ul>
						<c:forEach var="comm_po_lif" items="${comm_po_lif}" >
							<li>
								<a href="${BASE}/committee_bigdata/committee_jsp?code=${comm_po_lif.PO_CODE}" title="${comm_po_lif.PO_NAME }">${comm_po_lif.PO_NAME }</a>
								<span class="hui">${comm_po_lif.PO_VPLIFIED }</span>
								<span class="hong">${comm_po_lif.UNQUALIFIED }</span>
								<span class="huang">${comm_po_lif.WARNING }</span>
								<span class="lv">${comm_po_lif.QUALIFIED }</span>
								
							</li>
						
						</c:forEach>
						
						
<!-- 							<li> -->
<!-- 								<a href="">水南镇党委</a> -->
<!-- 								<span class="hong">05</span> -->
<!-- 								<span class="huang">10</span> -->
<!-- 								<span class="lv">12</span> -->
<!-- 							</li> -->
						

						</ul>

						<span class="jddinw si jiao1"></span>
						<span class="jddinw si jiao2"></span>
						<span class="jddinw si jiao3"></span>
						<span class="jddinw si jiao4"></span>
					</div>
					<div class="hr-20"></div>
					<div class="quxkhe xddinw">
						<div id="khe"></div>
						<div class="fraction">${check_detail.TOTAL}分</div>
						<span class="jddinw si jiao1"></span>
						<span class="jddinw si jiao2"></span>
						<span class="jddinw si jiao3"></span>
						<span class="jddinw si jiao4"></span>
					</div>
					<div class="hr-20"></div>
					<div class="qqkhqs xddinw">
						<div id="khequs"></div>
						<div class="fraction">${year}年</div>
						<span class="jddinw si jiao1"></span>
						<span class="jddinw si jiao2"></span>
						<span class="jddinw si jiao3"></span>
						<span class="jddinw si jiao4"></span>
					</div>
				</div>


			</div>

		</div>
		<!-- 导航弹窗 -->
		<ul class="navcon">
<!-- 			<li> -->
<!-- 				<h5>水南镇党委 <span>X</span></h5> -->
<!-- 				<div class="hr-5"></div> -->
<!-- 				<div class="xinq"> -->

<!-- 					1水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委 -->
<!-- 				水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水 -->

<!-- 				</div> -->

<!-- 			</li> -->
<!-- 			<li> -->
<!-- 				<h5>水南镇党委 <span>X</span></h5> -->
<!-- 				<div class="hr-5"></div> -->
<!-- 				<div class="xinq"> -->

<!-- 					2水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委 -->
<!-- 				水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委 -->

<!-- 				</div> -->

<!-- 			</li> -->
<!-- 			<li><h5>水南镇党委 <span>X</span></h5> -->
<!-- 				<div class="hr-5"></div> -->
<!-- 				<div class="xinq"> -->

<!-- 					3水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委 -->
<!-- 				水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委水南镇党委 -->
<!-- 				水南镇党委水南镇党委水南镇党委水南镇 -->

<!-- 				</div> -->

<!-- 			</li> -->
		</ul>
		<script>
		 /*全区党员考核成绩总体趋势*/


         var myChart = echarts.init(document.getElementById('khequs'));
        var option = {
	        	title: {
	                text: '全区考核成绩总体趋势',

	                top:10,
	                left:25,
	                textStyle:{
	                	fontWeight:'100',
	                	fontSize:20,
	                	color:'#ff5858'
	                }
	            },
				tooltip: {
					trigger: 'axis',
					formatter: ' {c}分',
					 axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                            type : 'line'        // 默认为直线，可选为：'line' | 'shadow'
                        }

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


			        type: 'value'
			    },
			    series: [{
			//        data: [45, 46, 40, 38, 43, 52, 62, 38, 43],
					data:[
						<c:forEach var="check" items="${list}" begin="0" end="${month}" step="1">
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



        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
		/*全区考核总体情况*/
        var myChart = echarts.init(document.getElementById('khe'));
        var option = {
            title: {
                text: '全区考核总体情况:',
                top:10,
                left:25,
                textStyle:{
                	fontWeight:'100',
                	fontSize:20,
                	color:'#ff5858'
                }
            },
            legend: {
            	orient: 'vertical',
        		right: 50,
        		bottom: 90,
        		textStyle:{
                	color:'#fff'
                },
                data: ["组织生活:${check_detail.FRACTION_ZZSH}分","凝聚力:${check_detail.FRACTION_NJL}分","战斗力:${check_detail.FRACTION_ZDL}分",]
            },
            series: [{
                name: '考核情况',
                type: 'pie',
                radius : ['30%', '40%'],
                center:['30%','50%'],
                data: [
                	{value:${check_detail.FRACTION_ZZSH},name:'组织生活:${check_detail.FRACTION_ZZSH}分'},
                	{value:${check_detail.FRACTION_NJL},name:'凝聚力:${check_detail.FRACTION_NJL}分'},
                	{value:${check_detail.FRACTION_ZDL},name:'战斗力:${check_detail.FRACTION_ZDL}分'},
                ]
            }]
        }; 
        // 使用刚指定的配置项和数据显示图表。
       myChart.setOption(option); 
        //党(工)委数----------------------------------------------------------------
        
        //年龄
        var myChart = echarts.init(document.getElementById('dangweiChat'));
        var option = {
			    tooltip: {
			        formatter: "{b}: {c} ({d}%)"
			    },
			    series: [
			        {
			            name:'年龄',
			            type:'pie',
			            radius: ['40%', '55%'],
			            label: {
			                normal: {
			                    formatter: '{per|{d}%} ',
			                    rich: {
			                        b: {
			                            fontSize: 16,
			                            lineHeight: 33
			                        },
			                         per: {
			                            color: '#eee',
			                            //backgroundColor: '#334455',
			                            padding: [2, 4],
			                            borderRadius: 2
			                        }
			                    }
			                }
			            },
			            data:[
			                {value:9, name:'镇（街道）'},
			                {value:13, name:'区直机关'},
			                {value:3, name:'卫生教育'},
			                {value:1, name:'国有企业'},
			                {value:3, name:'两新组织'},

			            ]
			        }
			    ]
			};
        
        myChart.setOption(option);
        
        //年龄
        var myChart = echarts.init(document.getElementById('nianl'));
        var option = {
			    tooltip: {
			        formatter: "{b}: {c} ({d}%)"
			    },
			    series: [
			        {
			            name:'年龄',
			            type:'pie',
			            radius: ['40%', '55%'],
			            label: {
			                normal: {
			                    formatter: '{per|{d}%} ',
			                    rich: {
			                        b: {
			                            fontSize: 16,
			                            lineHeight: 33
			                        },
			                         per: {
			                            color: '#eee',
			                            //backgroundColor: '#334455',
			                            padding: [2, 4],
			                            borderRadius: 2
			                        }
			                    }
			                }
			            },
			            data:[
			                {value:3498, name:'35岁以下'},
			                {value:5259, name:'36至60岁'},
			                {value:5105, name:'61岁以上'},

			            ]
			        }
			    ]
			};
        
        myChart.setOption(option);
         //学历
        var myChart = echarts.init(document.getElementById('xuel'));
        var option = {
			    tooltip: {
			        formatter: "{b}: {c} ({d}%)"
			    },
			    series: [
			        {
			            name:'学历',
			            type:'pie',
			            radius: ['40%', '55%'],
			            label: {
			                normal: {
			                    formatter: '{per|{d}%} ',
			                    rich: {
			                        b: {
			                            fontSize: 16,
			                            lineHeight: 33
			                        },
			                         per: {
			                            color: '#eee',
			                            //backgroundColor: '#334455',
			                            padding: [2, 4],
			                            borderRadius: 2
			                        }
			                    }
			                }
			            },
			            data:[
			                {value:1807, name:'初中及以下'},
			                {value:2244, name:'中专、高中、中技'},
			                {value:6281, name:'大专及以上'},
			                {value:3530, name:'其他'},
			            ]
			        }
			    ]
			};

        myChart.setOption(option);
        //职业
        var myChart = echarts.init(document.getElementById('zhiy'));
        var option = {
			    tooltip: {
			        formatter: "{b}: {c} ({d}%)"
			    },
			    series: [
			        {
			            name:'职业',
			            type:'pie',
			            radius: ['40%', '55%'],
			            label: {
			                normal: {
			                    formatter: '{per|{d}%} ',
			                    rich: {
			                        b: {
			                            fontSize: 16,
			                            lineHeight: 33
			                        },
			                         per: {
			                            color: '#eee',
			                            //backgroundColor: '#334455',
			                            padding: [2, 4],
			                            borderRadius: 2
			                        }
			                    }
			                }
			            },
			            data:[
			                {value:4248, name:'公职人员'},
			                {value:394, name:'农牧渔民'},
			                {value:2144, name:'离退休'},
			                {value:357, name:'非公组织'},
			                {value:6719, name:'其它职业'},

			            ]
			        }
			    ]
			};

        myChart.setOption(option);
        //性别
        var myChart = echarts.init(document.getElementById('xinb'));
        var option = {
			    tooltip: {
			        formatter: "{b}: {c} ({d}%)"
			    },
			    series: [
			        {
			            name:'性别',
			            type:'pie',
			            radius: ['40%', '55%'],
			            label: {
			                normal: {
			                    formatter: '{per|{d}%} ',
			                    rich: {
			                        b: {
			                            fontSize: 16,
			                            lineHeight: 33
			                        },
			                         per: {
			                            color: '#eee',
			                            //backgroundColor: '#334455',
			                            padding: [2, 4],
			                            borderRadius: 2
			                        }
			                    }
			                }
			            },
			            data:[
			                {value:9311, name:'男党员'},
			                {value:4551, name:'女党员'},


			            ]
			        }
			    ]
			};

        myChart.setOption(option);
        
        //支部
        var myChart = echarts.init(document.getElementById('branchChart'));
        var option = {
			    tooltip: {
			        formatter: "{b}: {c} ({d}%)"
			    },
			    series: [
			        {
			            name:'类型',
			            type:'pie',
			            radius: ['40%', '55%'],
			            label: {
			                normal: {
			                    formatter: '{per|{d}%} ',
			                    rich: {
			                        b: {
			                            fontSize: 16,
			                            lineHeight: 33
			                        },
			                         per: {
			                            color: '#eee',
			                            //backgroundColor: '#334455',
			                            padding: [2, 4],
			                            borderRadius: 2
			                        }
			                    }
			                }
			            },
			            data:[
			                {value:997, name:'其他'},
			                {value:14, name:'城市社区'},
			                {value:4, name:'建制村'},
			            ]
			        }
			    ]
			};

        myChart.setOption(option);
        
         //民族
        var myChart = echarts.init(document.getElementById('minz'));
        var option = {
			    tooltip: {
			        formatter: "{b}: {c} ({d}%)"
			    },
			    series: [
			        {
			            name:'民族',
			            type:'pie',
			            radius: ['40%', '55%'],
			            label: {
			                normal: {
			                    formatter: '{per|{d}%} ',
			                    rich: {
			                        b: {
			                            fontSize: 16,
			                            lineHeight: 33
			                        },
			                         per: {
			                            color: '#eee',
			                            //backgroundColor: '#334455',
			                            padding: [2, 4],
			                            borderRadius: 2
			                        }
			                    }
			                }
			            },
			            data:[
			                {value:38, name:'少数民族'},
			                {value:13824, name:'汉族'},


			            ]
			        }
			    ]
			};

        myChart.setOption(option);
		</script>




		<script src="${BASE}/asset/js/script.js"></script>

		<script type="text/javascript" src="${BASE}/asset/js/jquery.mCustomScrollbar.concat.min.js"></script>
		<script>
		(function($){
		$(window).on("load",function(){
		$(".jcnav ul,.navcon li .xinq,.shqk ul").mCustomScrollbar({
				theme:"minimal"
			});
		});
		})(jQuery);
			</script> 

	</body>
</html>



