<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:set var="BASE" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta charset="utf-8" />
    <title></title>
    <link rel="stylesheet" type="text/css" href="${BASE}/asset/css/xuzecss/reset.css" />
    <link href="${BASE}/asset/css/xuzecss/css.css" type="text/css" rel="stylesheet" />
    <link href="${BASE}/asset/css/xuzecss/jquery.mcustomscrollbar.css" type="text/css" rel="stylesheet" />
    <script src="${BASE}/asset/css/xuzecss/jquery.js"></script>
    <script type="text/javascript" src="${BASE}/asset/css/xuzecss/superslide.js"></script>
    <script src="${BASE}/asset/css/xuzecss/echarts.common.min.js"></script>
  </head>

  <body>
    <div class="mxsovhie">
      <div class="stzyjf"><a href="${BASE}/login/layout">退出</a></div>
    </div>
    <div class="mxs">
      <div class="top">
        <h3 class="street" style="width: 410px;"><a href="${BASE}/district_committee_bigdata?code=360702">章贡区委</a> </h3>


      </div>

      <div class="eetommitte hoverbox">
        <div class="hd row6">
          <ul>
            <li><a href="#">镇街道党委</a></li>
            <li><a  href="#">卫生教育</a></li>
            <li><a href="#">国有企业</a></li>
            <li><a href="#">区直机关</a></li>
            <li><a href="#">两新组织</a></li>
          </ul>
        </div>
   <div class="gf"></div>
        <div class="bd ftnavmore">
       
          <ul>
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
          <ul>
            <li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702008&type=611">市立医院党委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702007&type=611">区教育体育局党委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702021&type=611">区卫健委党委</a></li>
          </ul>
          <ul>
             <li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702009&type=611">区国资公司党委</a></li>
          </ul>
          <ul>
            <li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702014&type=612">区直机关党委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702027&type=611">区文广新旅游局党委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702025&type=611">区人力资源和社会保障局党委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702023&type=611">区城管局党委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702022&type=611">区市监局党委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702018&type=611">区商务局党委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702016&type=611">区住建局党委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702013&type=611">公安章贡分局党委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702012&type=611">区交通和运输管理局党委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702011&type=611">区农业农村局党委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702004&type=611">区国家税务局党委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702017&type=612">章贡高新区党工委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702030&type=611">区国有资产监督管理局党委</a></li>
          </ul>
          <ul>
            <li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702002&type=611">区非公有制经济组织党委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702010&type=611">区社会组织党委</a></li>
						<li><a href="${BASE}/committee_bigdata/committee_jsp?code=360702019&type=611">区赣发公司党委</a></li>
          </ul>
        </div>
        <script>
          $(document).ready(function(){
            var len=$(".row6").find("li").length;
            $(".ftnavmore").css({"display":"none"});
            $(".ftnavmore").find("ul").css({"display":"none"});
            $(".row6 li").mouseover(function(){
              $(".ftnavmore").find("ul").css({"display":"none"});
              $(".row6").find("li").removeClass("on");
              var i=$(this).index();
              if($(".ftnavmore").is(":hidden")){
                $(".row6").find("li").eq(i).addClass("on");
                $(".ftnavmore").find("ul").eq(i).fadeIn();
                $(".ftnavmore").slideDown();
              }else{
                $(".row6").find("li").eq(i).addClass("on");
                $(".ftnavmore").find("ul").eq(i).fadeIn();
              }
            })
            $(".hoverbox").mouseleave(function(){
              $(".ftnavmore").slideUp();
              $(".row6").find("li").removeClass("on");
            })
          });

        </script>
     
        <script style="display: none;">
                jQuery(".eetommitte").slide({});
              </script>
      </div>
    </div>
    <script src="${BASE}/asset/css/xuzecss/script.js"></script>
    <script type="text/javascript" src="${BASE}/asset/css/xuzecss/jquery.mcustomscrollbar.concat.min.js"></script>

  </body>
</html>






