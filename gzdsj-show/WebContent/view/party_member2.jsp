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
      body{overflow: hidden;background:#09236d url(${BASE}/asset/images/pmimage/bodyi.jpg) no-repeat top center;}
    </style>
    <div class="top">
      <div class="dsjtit">
        <h3 class="street"><span>党员个人界面</span> </h3>
        <div class="stzyjf"><a href="javascript:history.go(-1)">返回</a></div>
      </div>
    </div>
    <div class="main mxs">
      <div class="gebasicl fl">
        <div class="basic">
          <div class="qinformation xddinw fl">
          <div class="hbgtqin">
               <ul>
           
        <li style="background: #fbc441;"></li>
            </ul>
            </div>
            <h2>党员个人基本信息</h2>
            <div class="wefwee">
              <div class="zjsml">
                <img src="" alt="">
              </div>
              <ul class="dyuanxx">
                <li><span>姓　　名</span><h3></h3></li>
                <li><span>出生日期</span><h3></h3></li>
                <li><span>入党日期</span><h3></h3></li>
                <li><span>联系电话</span><h3></h3></li>
                <li><span>所属支部</span><h3></h3></li>

              </ul>
            </div>
          </div>
          <div class="fr">
            <div class="numerical">
              <ul>
                <li><h2>本月参与组织生活数</h2> <h1></h1></li>
                <li><h2 class="fwenhh">往月平均数</h2> <h1 class="fwengg"></h1></li>
              </ul>
            </div>
            <div class="numerifel">
              <ul>
                <li><h2>本月参与党员生活数</h2><h1></h1></li>
                <li><h2 class="fwenhh">往月平均数</h2> <h1 class="fwengg"></h1></li>
              </ul>
            </div>
  
            <div class="khqing">
            <%-- <div class="khqinxingx">
            <ul id="lip">
            <li><img src="${BASE}/asset/images/pmimage/fexxper.png"></li>
            <li><img src="${BASE}/asset/images/pmimage/fexxper.png"></li>
            <li><img src="${BASE}/asset/images/pmimage/fexxper.png"></li>
            <li><img src="${BASE}/asset/images/pmimage/fexxper.png"></li>
            <li><img src="${BASE}/asset/images/pmimage/ffexxper.png"></li>
            </ul>
            </div> --%>
                 <h5></h5>
              <h2>考核情况</h2>
              <div class="mmkfue">

                <!-- <div class="mmkhye">
                  <div id="fetmoe" style="height: 85px;width: 124px;,margin-top:10px;"></div>
                  
                  <div class="mmkhggre"><h1></h1></div>
                  <h4>组织生活</h4> 
                </div>
                <div class="mmkhye">
                  <div id="fetmer" style="height: 140px;width: 150px;"></div>
                   <div class="mmkhggre"><h1></h1></div>
                  <h4>学习教育</h4>
                </div>
                <div class="mmkhye">
                  <div id="fetmsa" style="height: 140px;width: 150px;"></div>
                  <div class="mmkhggre"><h1></h1></div>
                  <span>战斗力</span> 
                </div>
                  <div class="mmkhye">
                  <div id="fetmsi" style="height: 140px;width: 150px;"></div>
                  <div class="mmkhggre"><h1></h1></div>
                  <span>影响力</span> 
                </div>
                <div class="mmkhye">
                  <div id="fetmwu" style="height: 140px;width: 150px;"></div>
                  <div class="mmkhggre"><h1></h1></div>
                  <span>影响力</span> 
                </div> -->
                <div class="mmkhye">
                  <div id="fetmoe" style="height: 85px;width: 124px;margin-top:10px;"></div>
                  
                  <div class="mmkhggre" style="color:#1ed7ff;"> <h1></h1><h4>遵守纪律</h4> </div>
                  
                </div>
                <div class="mmkhye">
                  <div id="fetmer" style="height: 85px;width: 124px;margin-top:10px;"></div>
                 <div class="mmkhggre" style="color:#ffec57;"><h1></h1><h4>学习教育</h4> </div>
                </div>
                <div class="mmkhye">
                  <div id="fetmsa" style="height: 85px;width: 124px;margin-top:10px;"></div>
                <div class="mmkhggre" style="color:#ff85ba;"><h1></h1><h4>党员意识</h4> </div>
                </div>
                  <div class="mmkhye">
                  <div id="fetmsi" style="height: 85px;width: 124px;margin-top:10px;"></div>
                <div class="mmkhggre" style="color:#4be27b;"><h1></h1><h4>服务群众</h4> </div>
                </div>
                   <div class="mmkhye">
                  <div id="fetmwu" style="height: 85px;width: 124px;margin-top:10px;"></div>
                <div class="mmkhggre" style="color:#b678fc;"><h1></h1><h4>作用发挥</h4> </div>
                </div>
              </div>

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
            			var lip="";
            		var getdata=$.parseJSON(data);
            		var total=getdata.data.TOTAL
            		$(".khqing h5").append(total);
            		console.log(data)
            		$(".mmkhggre h1")[0].append(getdata.data.FRACTION_ZSJL);
            		$(".mmkhggre h1")[1].append(getdata.data.FRACTION_XXYJ);
            		$(".mmkhggre h1")[2].append(getdata.data.FRACTION_DYYS);
            		$(".mmkhggre h1")[3].append(getdata.data.FRACTION_FWQZ);
            		$(".mmkhggre h1")[4].append(getdata.data.FRACTION_ZYFH);
            		$(".hbgtqin li").css("width",total+"%")
            		/* if(total<20){lip='<li><img src="${BASE}/asset/images/pmimage/ffexxper.png"></li><li><img src="${BASE}/asset/images/pmimage/ffexxper.png"></li><li><img src="${BASE}/asset/images/pmimage/ffexxper.png"></li><li><img src="${BASE}/asset/images/pmimage/ffexxper.png"></li><li><img src="${BASE}/asset/images/pmimage/ffexxper.png"></li>'}
            		if(total>=20&&total<40){lip='<li><img src="${BASE}/asset/images/pmimage/fexxper.png"></li><li><img src="${BASE}/asset/images/pmimage/ffexxper.png"></li><li><img src="${BASE}/asset/images/pmimage/ffexxper.png"></li><li><img src="${BASE}/asset/images/pmimage/ffexxper.png"></li><li><img src="${BASE}/asset/images/pmimage/ffexxper.png"></li>'}
            		if(total>=40&&total<60){lip='<li><img src="${BASE}/asset/images/pmimage/fexxper.png"></li><li><img src="${BASE}/asset/images/pmimage/fexxper.png"></li><li><img src="${BASE}/asset/images/pmimage/ffexxper.png"></li><li><img src="${BASE}/asset/images/pmimage/ffexxper.png"></li><li><img src="${BASE}/asset/images/pmimage/ffexxper.png"></li>'}
            		if(total>=60&&total<80){lip='<li><img src="${BASE}/asset/images/pmimage/fexxper.png"></li><li><img src="${BASE}/asset/images/pmimage/fexxper.png"></li><li><img src="${BASE}/asset/images/pmimage/fexxper.png"></li><li><img src="${BASE}/asset/images/pmimage/fexxper.png"></li><li><img src="${BASE}/asset/images/pmimage/ffexxper.png"></li>'}
            		if(total>=80&&total<100){lip='<li><img src="${BASE}/asset/images/pmimage/fexxper.png"></li><li><img src="${BASE}/asset/images/pmimage/fexxper.png"></li><li><img src="${BASE}/asset/images/pmimage/fexxper.png"></li><li><img src="${BASE}/asset/images/pmimage/fexxper.png"></li><li><img src="${BASE}/asset/images/pmimage/fexxper.png"></li>'}
            		$("#lip").html(lip); */
            		//console.log( etdata.data);
            		var myChart = echarts.init(document.getElementById('fetmoe'));
            		var option = {
            		title: {
            		text: '',
            		top:0,
            		left:195,
            		textStyle:{
            		fontWeight:'00',
            		fontSize:20,
            		color:'#1ed7ff'
            		}
            		},
            		legend: {
            		orient: 'vertical',
            		right: 120,
            		bottom: -550,
            		textStyle:{
            		color:'#1ed7ff'
            		},
            		data: ["战斗力",]
            		},
            		series: [{
            		name: '考核情况',
            		type: 'pie',
            		radius : ['45%', '60%'],
            		center:['50%','40%'],
            		data: [
            		{value:getdata.data.FRACTION_ZSJL,name:'' ,itemStyle:{color:'#2DC5C3'}},
            		{value:10,name:'',itemStyle:{color:'#081F62'}}, 

            		]
            		}]
            		}; 
            		// 使用刚指定的配置项和数据显示图表。
            		myChart.setOption(option); 



            		var myChart = echarts.init(document.getElementById('fetmer'));
            		var option = {
            		title: {
            		text: '',
            		top:0,
            		left:195,
            		textStyle:{
            		fontWeight:'00',
            		fontSize:20,
            		color:'#1ed7ff'
            		}
            		},
            		legend: {
            		orient: 'vertical',
            		right: 120,
            		bottom: -550,
            		textStyle:{
            		color:'#1ed7ff'
            		},
            		data: ["战斗力",]
            		},
            		series: [{
            		name: '考核情况',
            		type: 'pie',
            		radius : ['45%', '60%'],
            		center:['50%','40%'],
            		data: [
            		{value:getdata.data.FRACTION_XXYJ,name:'' ,itemStyle:{color:'#FFD171'}},
            		{value:10,name:'',itemStyle:{color:'#081F62'}}, 

            		]
            		}]
            		}; 
            		// 使用刚指定的配置项和数据显示图表。
            		myChart.setOption(option); 



            		var myChart = echarts.init(document.getElementById('fetmsa'));
            		var option = {
            		title: {
            		text: '',
            		top:0,
            		left:195,
            		textStyle:{
            		fontWeight:'00',
            		fontSize:20,
            		color:'#1ed7ff'
            		}
            		},
            		legend: {
            		orient: 'vertical',
            		right: 120,
            		bottom: -550,
            		textStyle:{
            		color:'#1ed7ff'
            		},
            		data: ["战斗力",]
            		},
            		series: [{
            		name: '考核情况',
            		type: 'pie',
            		radius : ['45%', '60%'],
            		center:['50%','40%'],
            		data: [
            		{value:getdata.data.FRACTION_DYYS,name:'' ,itemStyle:{color:'#FF0078'}},
            		{value:10,name:'',itemStyle:{color:'#081F62'}}, 

            		]
            		}]
            		}; 
            		// 使用刚指定的配置项和数据显示图表。
            		myChart.setOption(option); 
            		
            		
            		var myChart = echarts.init(document.getElementById('fetmsi'));
            		var option = {
            		title: {
            		text: '',
            		top:0,
            		left:195,
            		textStyle:{
            		fontWeight:'00',
            		fontSize:20,
            		color:'#1ed7ff'
            		}
            		},
            		legend: {
            		orient: 'vertical',
            		right: 120,
            		bottom: -550,
            		textStyle:{
            		color:'#1ed7ff'
            		},
            		data: ["影响力",]
            		},
            		series: [{
            		name: '考核情况',
            		type: 'pie',
            		radius : ['45%', '60%'],
            		center:['50%','40%'],
            		data: [
            		{value:getdata.data.FRACTION_FWQZ,name:'' ,itemStyle:{color:'#4be27b'}},
            		{value:10,name:'',itemStyle:{color:'#081F62'}}, 

            		]
            		}]
            		}; 
            		// 使用刚指定的配置项和数据显示图表。

            		myChart.setOption(option); 
            		var myChart = echarts.init(document.getElementById('fetmwu'));
            		var option = {
            		title: {
            		text: '',
            		top:0,
            		left:195,
            		textStyle:{
            		fontWeight:'00',
            		fontSize:20,
            		color:'#1ed7ff'
            		}
            		},
            		legend: {
            		orient: 'vertical',
            		right: 120,
            		bottom: -550,
            		textStyle:{
            		color:'#1ed7ff'
            		},
            		data: ["战斗力",]
            		},
            		series: [{
            		name: '考核情况',
            		type: 'pie',
            		radius : ['45%', '60%'],
            		center:['50%','40%'],
            		data: [
            		{value:getdata.data.FRACTION_ZYFH,name:'' ,itemStyle:{color:'#b678fc'}},
            		{value:10,name:'',itemStyle:{color:'#081F62'}}, 

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
            		$(".dyuanxx li h3")[0].append(getdata.data.NAME)
            		$(".dyuanxx li h3")[3].append(getdata.data.MOBILE_NU)
            		$(".dyuanxx li h3")[1].append(getdata.data.BIRTH_DAT)
            		$(".dyuanxx li h3")[4].append(getdata.data.BELONG_PO)
            		$(".dyuanxx li h3")[2].append(getdata.data.BECOME_PM_DATE)
            		$(".zjsml img").attr("src",getdata.data.HEAD_PORTRAIT)
            		$(".numerical ul li h1")[0].append(getdata.data.MONTH_POLIFE_NUMBER)
            		$(".numerical ul li h1")[1].append(getdata.data.BEMONTH_POLIFE_AVERAGE)
            		$(".numerifel ul li h1")[0].append(getdata.data.MONTH_PMLIFE_NUMBER)
            		$(".numerifel ul li h1")[1].append(getdata.data.BEMONTH_PMLIFE_AVERAGE)
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
          <div class="xinjtitle-gg" id="Mafefs">
            <div class="xinjtitle">
              <span class="xinj-yi">近期党员生活 </span>
              <span class="xinj-id">生活类型</span>
              <span class="xinj-con">活动时间</span>
              <span class="xinj-bon">活动详情</span>
            </div>
            <ul>  
              <!-- <li><a href="#" class="jingkaiq" ><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li>
              <li><a href="#" class="jingkaiq"><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li>
              <li><a href="#" class="jingkaiq"><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li>
              <li><a href="#" class="jingkaiq"><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li>
              <li><a href="#" class="jingkaiq"><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li>
              <li><a href=""class="jingkaiq"><span class="xinj-yi">组织323国道卫生整治</span><span class="xinj-id"> 民主评议</span><span class="xinj-con">2018-05-10</span><span class="xinj-bon">详情</span></a></li>
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
            			var ps="";
            			//console.log(n);
            			p+='<li><a href="#"  ><span class="xinj-yi">'+n.PMLITE_DETAILS+'</span><span class="xinj-id"> '+n.PMLITE_LABEL+'</span><span class="xinj-con">'+n.ACTIVITY_TIME+'</span><span class="xinj-bon">详情</span></a></li>'
            			$.each(n.PICTURE,function(i,n){
            				ps+='<img src="'+n+'" class="im">'
            			});
            			
            		
            		    $("body").append('<div class="ditulloe"><div class="dituyi"><span></span></div> <div class="xinq"><h2>近期党员生活</h2><div class="dyuans"> <p>'+n.PMLITE_DETAILS+'<br/>'+ps+'</p></div></div></div>');
            		});
            		
            	$(".xinjtitle-gg ul").html(p);
            	$(".rfutur .xinjtitle-gg ul").mCustomScrollbar({
                    theme:"minimal"
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
             	$(".ditulloe .dyuans p").mCustomScrollbar({
          theme:"minimal"
        });
            		
            	$(".rfutur .xinjtitle-gg ul").mCustomScrollbar({
                     theme:"minimal"
                   });  
            		//console.log(getdata);
            		},error:function(err){
                     	console.log("error")
                    }
             	})
              </script> 


          <script>  
            (function($){
              $(window).on("load",function(){
            	  
            	  
              });
              
              
              
             

              
            })(jQuery);
          </script>

        </div>
      </div>
      <div class="lgetub fr">
        <div class="digetth">
          <h2>全年考核情况趋势</h2>
          <span>${year}年</span>
          <div id="digetu" style="height: 285px;"></div>

        </div>
        <div class="digetth">
          <h2>在线学习情况</h2>
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
            		console.log(getdata)
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
            		console.log(data);
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
            	                    formatter: '得分:{c}<br/>',
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
        <div class="sjgneq">
          <h2>预警系统</h2>
          <span></span>
        </div>
        <script src="${BASE}/asset/css/csspm/sheqy.js"></script>
        <script src="${BASE}/asset/css/csspm/script.js"></script>
        <script type="text/javascript" src="${BASE}/asset/css/csspm/jquery.mcustomscrollbar.concat.min.js"></script>


      </div>
      
      
      <!-- <div class="ditulloe jingkaiq">
      <div class="dituyi"><span></span></div>

      <div class="xinq"><h2>示例标题近期党员生活1</h2>
        <div class="dyuans"><p>近年来，随着城市化快速发展，城市各类新兴领域，新兴业态不断涌现，外来人口逐年增加，居民诉求日益多元，社会治理任务纷繁复杂，街道社区党建、单位党建、行业党建各自为战、各抓各的，缺乏整体效应。解放街道党工委积极探索城市基层党建新路径，按照“多元融合、同心共创、资源共享、互助互促、做大党建”的总体思路，推进区域内各类党组织共建共驻、联动融合，促进传统平面化的社区“小党建”向立体化的城市基层“大党建”转变，将基层党建“盆景”有效转化成美丽“风景”。 组织融合，构建城市党建“新格局”，搭架构。破除传统各自为阵、条块分割的壁垒，建立上下联动、横向互动的区域化党建组织体系。解放街道党工委以文清路街区为中心点，把地缘相近的3－4个社区整合为1个党建共建圈，向外辐射大新开路片区、南京路片区、洪城巷片区.
          尚书街片区，逐步形成“一环四片”区域化城市基层党建大网格。有效推动圈内组织共建、资源共享、党日共学、义工共做、项目共谋，
          建机制。探索建立“123”运行机制，即“1”是确定一个核心，圈内联盟协同发展；“2”是固定两项活动制度，每月一次议事共商，每季至少举行一次主题突出的共建活动；

          “3”是建立三项组织规则，一个街道班子成员联系，一个示范社区牵头，一个固定场所集中议事。推项目。由街道社区和驻区单位、中小学校、非公经济组织和社会组织等党组织同时提供资源项目清单和服务需求清单，开展双向认领。截止目前，街道社区党组织先后与33个各领域党组织签订33份协议书，就52个互需项目开展对接。 资源融合，搭建城市党建“新载体”。党员教育共抓。组建街道级党课讲师团，邀请市内专家学者、党员领导干部等师资讲国情历史，组织老党员红歌团传播经典，党日活动由“封闭”转向“开放”，深受各领域党员好评。建国路社区党员邓桂英参与“建中共进”党建共建圈主题活动时谈到：“我入党25年了，第一次参加这种学习会，学习的形式、效果很好，既保持了党内的严肃认真，又从组织生活的策划上、主题的选定上体现了时代气息，让我印象深刻”。党建阵地共用。推动街道社区党组织和驻区单位党组织在党建阵地上互相支持、共用共管。
          在“尚红联建”党建共建圈举办的数次党日活动中，辖区内三江楼大酒店党支部免费提供活动场地、音响设备等资源。
          “新西相连”党建共建圈举办的文艺晚会，由江西环境工程学院提供场所。志愿服务共组。与驻区单位共同组建党员志愿服务队，开展组团式服务，在每个共建圈组建了7支城市党员志愿服务队
          分别提供党建宣讲、文明劝导、环境整治、法律咨询、就业扶持、爱心帮扶、邻里调解等七大类服务项目，登记注册党员志愿者654名，开展志愿服务2230人次。 文化融合，激发城市党建“新活力”。
          联合挖掘特色文化。把建春门、四贤坊、郁孤台等13处辖区范围内历史遗址作为“开放式”党员教育基地，深化拓展组织生活的内容、范围、规模和效果。“建中共进”共建圈党日活动由室内转向室外，通过游览古城墙、建春门等历史古迹，来提升党员的爱国意识。联合提升小区文化。以背街小巷改造为重点，邀请驻区单位章贡区文化馆以及辖内文史专家、小区党员共同挖掘小区历史，“和衷共济”党建共建圈组织社区党员开展小区历史见证“我来谈”活动，让党员重拾往事记忆。联合培植党建文化。运用“新时代传习所”、“十九大”宣讲辅导报告、党员行为标准大讨论等系列党建活动载体，引导党员平常工作“看得出”，关键时刻“站得出”，危难关头“豁得出”。通过组织党员观看红色电影、唱红色歌曲等活动形式，增强党建文化的渗透力。 经验启示。抓城市基层党建，必须要坚持在融合中发展，牢固树立轴心理念。在城市，街道社区、驻区单位、新兴领域等多元主体“唇齿相依”，无论体制内体制外，无论楼宇还是商圈，任何组织都要落地街道，街道社区党组织自然成为联结辖区内各领域党组织的轴心。解放街道创建的“党建共建圈”，目的就是要增强街道社区党组织的主体意识和主导意识，使其有能力、有条件自觉地站前台、唱主角，进而有效组织引导辖区各类组织积极参与共驻共建，党建覆盖范围由点到面、连线成网，形成区域化大党建整体合力。抓城市基层党建，必须要坚持在联结中共赢，有效推动互联互动。从目前城市基层党建的运行上来看，往往就是街道搞街道的、机关搞机关的、企业搞企业的，在同一区域，街道社区党建、单位党建、行业党建各自为战、各抓各的，缺乏整体效应。解放街道创建的“党建共建圈”，就是要打破行政隶属壁垒，拆除相互封闭藩篱，改变以往封闭运行模式，实现互联互动，推动辖区各领域党建相互渗透、相互贯通、相互联结。抓城市基层党建，必须要坚持在开放中加强，达到共建共享目标。探索区域党建“共建圈”就是要引导、推动各领域党组织用开放的视野、思维和胸怀，坚持条块结合、共建共享，把资金、场地、人才等资源有机整合、统筹利用，强化利益联结、资源整合和力量统筹，有效推动组织共建、资源共享、党日共学、义工共做、项目共谋，发挥出党建的最大效益。</p></div>
      </div>
      
    </div> -->
   
    

    <script>  
      (function($){
        $(window).on("load",function(){
          $(".ditulloe .dyuans p").mCustomScrollbar({
            theme:"minimal"
          });
          
          
          
          
          
        });
      })(jQuery);
      
      /* $('.jingkaiq').on('click',function() {
    		$('.ditulloe').show().css({
    			'margin-top': -$('.ditulloe').height() / 2,
    			'margin-left': -$('.ditulloe').width() / 2,
    			'z-index':1
    		})
    		$('.ditulloe .dituyi span').on('click',function() {
    			$('.ditulloe').fadeOut();
    		});
    	});
        
        $('.jingkaiq').click(function(){
      	  $('.ditulloe').show()
        }); */
    </script>
<script defer="defer">
console.log(111)
/* $(".xinjtitle-gg ul").mCustomScrollbar({
    theme:"minimal"
  }) */; 
</script>
 <div class="hr-35"></div>
  </body>
</html>



