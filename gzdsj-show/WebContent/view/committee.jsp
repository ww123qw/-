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
    <link rel="stylesheet" type="text/css" href="<%=path%>/asset/cssdw/reset.css" />
    <link href="<%=path%>/asset/cssdw/animate.css" type="text/css" rel="stylesheet" />
    <link href="<%=path%>/asset/cssdw/css.css" type="text/css" rel="stylesheet" />
    <link href="<%=path%>/asset/cssdw/jquery.mcustomscrollbar.css" type="text/css" rel="stylesheet" />
    <script src="<%=path%>/asset/cssdw/jquery.js"></script>
    <script type="text/javascript" src="<%=path%>/asset/cssdw/superslide.js"></script>
    <script src="<%=path%>/asset/cssdw/echarts.common.min.js"></script>
  </head>
  <body>
    <style>
      body{overflow-x: hidden;background: #060214}
    </style>
    <div class="top">
      <a href="javascript:history.go(-1)" style="display:  block;height: 50px;width: 140px;position:  fixed;top: 10px;right: 34px;background: url(images/end.png) no-repeat right center;color: #4c4388;line-height: 45px;text-align:  center;font-size: 16px;">返  回</a>

      <div class="dsjtit">
        <h3 class="street"><span id="namedw">${name }</span></h3>
      </div>
    </div>
    <div class="main mxs">
      <div class="bvenmk fl">
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
											<div class="pic"><a href="<%=path %>/party_member_data?code=${shuji.PM_CODE}" ><img src="${shuji.HEAD_IMG}" /></a></div>
											<div class="title">
											<a href="<%=path %>/party_member_data?code=${shuji.PM_CODE}" >${shuji.LEADER_NAME}</a>
											
											</div>
										</li>
									</c:otherwise>
									
									</c:choose>
									
									


                  <!--   <li>
                      <div class="pic"><a href="/testgzbig_show/party_member_data?code=36070200100060002" ><img src="image/ffd49804-c71c-4080-9da5-4028409b2463.png" /></a></div>
                      <div class="title">
                        <a href="/testgzbig_show/party_member_data?code=36070200100060002" >刘远新</a>

                      </div>
                    </li> -->







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
											<div class="pic"><a href="<%=path %>/party_member_data?code=${memb.PM_CODE }" ><img src="${memb.HEAD_IMG }" /></a></div>
											<div class="title"><a href="<%=path %>/party_member_data?code=${memb.PM_CODE }" >${memb.LEADER_NAME}</a></div>
										</li>
									</c:forEach>
									</c:otherwise>
									
									</c:choose>
									



                   <%--  <li>
                      <div class="pic"><a href="/testgzbig_show/party_member_data?code=36070200100060038" ><img src="<%=path%>/asset/imagedw/991eff86-fe51-4d92-b8f2-5567db978e51.png" /></a></div>
                      <div class="title"><a href="/testgzbig_show/party_member_data?code=36070200100060038" >温波光</a></div>
                    </li>

                    <li>
                      <div class="pic"><a href="/testgzbig_show/party_member_data?code=36070200500050017" ><img src="<%=path%>/asset/imagedw/2a1d7d5e-75f1-45ad-b17a-b08a64df9e31.jpg" /></a></div>
                      <div class="title"><a href="/testgzbig_show/party_member_data?code=36070200500050017" >陈洪文</a></div>
                    </li> --%>







                    <!-- <li>
<div class="pic"><a href="#" ><img src="image/default.jpg" /></a></div>
<div class="title"><a href="#" >暂缺</a></div>
</li>
<li>
<div class="pic"><a href="#" ><img src="image/default.jpg" /></a></div>
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



                   <%--  <li>
                      <div class="pic"><a href="/testgzbig_show/party_member_data?code=36070200100060053" ><img src="<%=path%>/asset/imagedw/15f4468f-f7c2-44ce-9a27-3ee6c63ef699.png" /></a></div>
                      <div class="title"><a href="/testgzbig_show/party_member_data?code=36070200100060053" >颜龙华</a></div>
                    </li>

                    <li>
                      <div class="pic"><a href="/testgzbig_show/party_member_data?code=36070200100060023" ><img src="<%=path%>/asset/imagedw/da99f91b-419a-4b8a-88a0-f35e10f6b4dd.jpg" /></a></div>
                      <div class="title"><a href="/testgzbig_show/party_member_data?code=36070200100060023" >赖虔英</a></div>
                    </li>

                    <li>
                      <div class="pic"><a href="/testgzbig_show/party_member_data?code=36070200100060039" ><img src="<%=path%>/asset/imagedw/378af464-1417-4f47-b20f-92109dbe216f.png" /></a></div>
                      <div class="title"><a href="/testgzbig_show/party_member_data?code=36070200100060039" >彭华明</a></div>
                    </li>

                    <li>
                      <div class="pic"><a href="/testgzbig_show/party_member_data?code=36070200100060020" ><img src="<%=path%>/asset/imagedw/cf572b2b-8617-45a0-bc15-eab28cc99ceb.png" /></a></div>
                      <div class="title"><a href="/testgzbig_show/party_member_data?code=36070200100060020" >李文伟</a></div>
                    </li>

                    <li>
                      <div class="pic"><a href="/testgzbig_show/party_member_data?code=36070200100060022" ><img src="<%=path%>/asset/imagedw/99632b05-f163-43c0-8e70-713d6468a017.jpg" /></a></div>
                      <div class="title"><a href="/testgzbig_show/party_member_data?code=36070200100060022" >钟颖</a></div>
                    </li>
 --%>










                    <!-- <li>
<div class="pic"><a href="#" ><img src="image/default.jpg" /></a></div>
<div class="title"><a href="#" >暂缺</a></div>
</li>
<li>
<div class="pic"><a href="#" ><img src="image/default.jpg" /></a></div>
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
        <div class="zyjspeo">
          <div class="dkhequs xddinw fl">
            <div id="hequs"></div>
            <span class="jddinw painm">当前考核排名：<b>${pank}</b></span>
            <span class="jddinw nuanf">( ${year } )</span>

            <span class="jddinw si jiao1"></span>
            <span class="jddinw si jiao2"></span>
            <span class="jddinw si jiao3"></span>
            <span class="jddinw si jiao4"></span>
          </div>
          <div class="zyjranch xddinw fl">
            <div class="hd">
              <span class="jddinw zgntyi">支部名称</span>
              <span class="jddinw zgnter">排名</span>
              <span class="jddinw zgntsa">分数</span>
            </div>
            <ul class="iznjtitl" id="zxiandcd">
            
            <%-- <c:forEach var="check_info" items="${checklist}" begin="0" step="1" end='${month}' >
			 			${check_info.FRACTION},
			 			
			 	 <li><a href="" target="_blank"><span class="xinj-yi">×××社区支部</span><span class="xinj-id">2</span><span class="xinj-con">23.88</span></a></li>
			 			
			 		</c:forEach> --%>
            
            
             <!--  <li><a href="" target="_blank"><span class="xinj-yi">×××社区支部</span><span class="xinj-id">2</span><span class="xinj-con">23.88</span></a></li>
              <li><a href="" target="_blank"><span class="xinj-yi">×××社区支部</span><span class="xinj-id">2</span><span class="xinj-con">23.88</span></a></li>
              <li><a href="" target="_blank"><span class="xinj-yi">×××社区支部</span><span class="xinj-id">2</span><span class="xinj-con">23.88</span></a></li>
              <li><a href="" target="_blank"><span class="xinj-yi">×××社区支部</span><span class="xinj-id">2</span><span class="xinj-con">23.88</span></a></li>
              <li><a href="" target="_blank"><span class="xinj-yi">×××社区支部</span><span class="xinj-id">2</span><span class="xinj-con">23.88</span></a></li>
              <li><a href="" target="_blank"><span class="xinj-yi">×××社区支部</span><span class="xinj-id">2</span><span class="xinj-con">23.88</span></a></li>
              <li><a href="" target="_blank"><span class="xinj-yi">×××社区支部</span><span class="xinj-id">2</span><span class="xinj-con">23.88</span></a></li>
              <li><a href="" target="_blank"><span class="xinj-yi">×××社区支部</span><span class="xinj-id">2</span><span class="xinj-con">23.88</span></a></li>
              <li><a href="" target="_blank"><span class="xinj-yi">×××社区支部</span><span class="xinj-id">2</span><span class="xinj-con">23.88</span></a></li>
              <li><a href="" target="_blank"><span class="xinj-yi">×××社区支部</span><span class="xinj-id">2</span><span class="xinj-con">23.88</span></a></li> -->
            </ul>
          </div>
        </div>
         <script>
    (function($){
    $(window).on("load",function(){
    $(".iznjtitl").mCustomScrollbar({
        theme:"minimal"
      });
    $(".youxiu1").mCustomScrollbar({
        theme:"minimal"
      }); 
    });
    })(jQuery);
  </script>
        <script type="text/javascript">
        
        var code =window.location.search.split('&')[0].split('=')[1]
        console.log(code)
        $.ajax({
    		url: '<%=path%>/brench/brenchSan',
    		type: 'POST',
    		dataType: 'json',
    		data: {code: code},
    		success:function(data){
    			/* var arrayJsonObject = JSON.parse(data);
    			   console.log(arrayJsonObject); */
    			//console.log(data);
    			var p ="";
    			 $.each(data,function(i,n){
    			   var e=i+1;//排名
                   var tit = n.NAME;//支部名称
                   var score =n.M6;
                  var arrayJsonObject = JSON.parse(score).total;
    			  //console.log(arrayJsonObject.total);
                 /*  console.log(arrayJsonObject) */ 
                   p+='<li><a href="" target="_blank"><span class="xinj-yi">'+tit+'</span><span class="xinj-id">'+e+'</span><span class="xinj-con">'+arrayJsonObject+'</span></a></li>';
                    
                 });
    			 //console.log(p);
    			 $("#zxiandcd").html(p);
           },error:function(err){
           	console.log("error")
           }
    	})
        
        
        
        </script>
        
        <div class="hr-20"></div>
        <div class="dayuankq xddinw">
          <h4>考核成绩靠前党员</h4>
          <ul class="dayuan youxiu1" id="youxiu1">

            <%-- <li>
              <img src="<%=path%>/asset/imagedw/80400ed8-9cbb-4c68-b50e-660b5ed74850.jpg" alt="">
              <a href="/testgzbig_show/party_member_data?code=36070200100090016">
                <span>肖露茜</span>
              </a>
              <span>93分</span>
            </li> --%>
<%-- <span title="${memb_info.PO_NAME}">${memb_info.PO_NAME}</span> --%>
           <c:forEach var="memb_info" items="${excellet}" begin="0" step="1" end='${size}' >
			 			<li>
							<img src="${memb_info.HEARDURL}" alt="">
							<a href="<%=path%>/party_member_data?code=${memb_info.PM_CODE}">
							
							<span>${memb_info.PM_NAME }</span>
							</a>
							<span>${memb_info.PM_SCORE}</span>
						</li>
			 		</c:forEach>

            <!-- 						<li> -->

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
   
      
      <%-- <script type="text/javascript">
      
      
      $.ajax({
  		url: '<%=path%>/brench/gatPmSeRanka',
  		type: 'POST',
  		dataType: 'json',
  		data: {code: code},
  		success:function(data){
      
  			console.log(data);
  			var p="";
  			
  			//console.log(n);
  		 $.each(data,function(i,n){
  			 var pm_code= n.PM_CODE;
  			 //console.log(pm_code);
  			var rul ='<%=path%>/party_member_data?code=';
  			var ul =rul+pm_code
  					//console.log(ul);
  			//console.log(n.HEARDURL);
  				p+='<li><img src="'+n.HEARDURL +'" alt=""><a href="'+ul+'"><span>'+n.PM_NAME +'</span></a><span>'+n.PM_SCORE +'</span></li>'; 
  				
  				
  			});
  				$("#youxiu1").html(p);  
  				
  		},error:function(err){
         	console.log("error")
         }
  	})
      
      </script>  --%>
      
      
      <div class="xdenmk fr">
        <div class="qbzzepng">
          <div class="zepng fl">
            <div class="zgpzbs">
              <ul>
                <li><span>支部数</span > <h2 id='zbs'></h2></li>
                <li class="dweifu"><span>党员数</span> <h2 id='dys'></h2></li>
                <li><span>本月党员生活发布数</span> <h2 id='shs'></h2></li>
              </ul>
            </div>
            
            <script type="text/javascript">
            
            $.ajax({
        		url: '<%=path%>/brench/NineGetData',
        		type: 'POST',
        		dataType: 'json',
        		data: {code: code},
        		success:function(data){
        			//console.log("ceshi"+code);
        			/* var arrayJsonObject = JSON.parse(data);
        			   console.log(arrayJsonObject); */
        			    var PO_BRANCH_NUMBER=data.data.PO_BRANCH_NUMBER;//支部数
        			    var PM_NUMBER=data.data.PM_NUMBER;//党员数
        			    var MONTH_PM=data.data.MONTH_PM;//党员生活数
        			    $("#zbs").append(PO_BRANCH_NUMBER);
        			    $("#dys").append(PM_NUMBER);
        			    $("#shs").append(MONTH_PM);
        			//console.log(data);
        		  },error:function(err){
                     	console.log("error")
                     }
              	})
                  
            
            
            
            </script>
            
            
            
            
            
            
            
            
            
            <div class="hr-20"></div>
            <div class="zepdwg">
              <div class="zuodwg fl">
                <span>党委考核总体情况</span>
                <div id="main" style="width: 373px;height:210px;"></div>
                <div class="fraction">9.39分</div>
                <script>
                var FRACTION_NJL="";
                var TOTAL="";
                var FRACTION_ZDL="";
                var FRACTION_ZZSH="";
                var code =window.location.search.split('&')[0].split('=')[1]
               // console.log(code)
                $.ajax({
            		url: '<%=path%>/brench/getPmOvera',
            		type: 'POST',
            		dataType: 'json',
            		data: {code: code},
            		success:function(data){
            			/* var arrayJsonObject = JSON.parse(data);
            			   console.log(arrayJsonObject); */
            			    FRACTION_NJL=data.data.FRACTION_NJL;
            			    TOTAL=data.data.TOTAL;
            			    FRACTION_ZDL=data.data.FRACTION_ZDL;
            			    FRACTION_ZZSH=data.data.FRACTION_ZZSH;
            			    
            			    
            			    
            			    
            			    
            			    

                         var myChart = echarts.init(document.getElementById('main'));
                   var option = {
                   
                       legend: {
                         orient: 'vertical',
                       right: 10,
                       bottom: 90,
                       textStyle:{
                             color:'#fff'
                           },
                      data:['参与组织生活','凝聚力','战斗力']
                       },
                       series: [{
                           name: '考核情况',
                           type: 'pie',
                           radius : ['30%', '40%'],
                           center:['30%','35%'],
                           data: [
                             {value:FRACTION_ZZSH,name:'参与组织生活'},
                             {value:FRACTION_NJL,name:'凝聚力'},
                             {value:FRACTION_ZDL,name:'战斗力'},
                             
                           ]
                       }]
                   }; 
                   // 使用刚指定的配置项和数据显示图表。
                  myChart.setOption(option); 
                          
            			    
            			    
            			    
            			    
            			    
            			    
            			    
            			    
            			    
            			    
            			    
            			//console.log(data.data);
                   },error:function(err){
                   	console.log("error")
                   }
            	})
                
                
                
            
                
                
                
                
                
                
                
                  
                  
                </script>
              </div>
              <div class="youdwg fr">
                <span>党组织生活正常情况</span>
                <div id="bain" style="width: 373px;height:210px;"></div>
                <script>
                var PO_QUALIFIED="";
                var PO_UNQUALIFIED="";
                var PO_VPLIFIED="";
                var PO_WARNING="";
                var code =window.location.search.split('&')[0].split('=')[1]
               // console.log(code)
                $.ajax({
            		url: '<%=path%>/brench/orgLifeStatus',
            		type: 'POST',
            		dataType: 'json',
            		data: {code: code},
            		success:function(data){
            			  PO_QUALIFIED=data.data.PO_QUALIFIED;
                          PO_UNQUALIFIED=data.data.PO_UNQUALIFIED;
                          PO_VPLIFIED=data.data.PO_VPLIFIED;
                         PO_WARNING=data.data.PO_WARNING;
                //console.log(data);
                         var myChart = echarts.init(document.getElementById('bain'));

                         option = {

               xAxis: {
                   type: 'category',
                   data: ['正常支部 ', '预警提醒', '非正常支', '其他支部']
               },

                textStyle:{
                             color:'#fff'
                           },
               yAxis: {
                   type: 'value'
               },
               series: [{
                   data: [PO_QUALIFIED, PO_WARNING, PO_UNQUALIFIED,PO_VPLIFIED],
                   type: 'bar'
               }]

           };



                             myChart.setOption(option);
            },error:function(err){
               	console.log("error")
               }
        	})
                
            

                 /*  var myChart = echarts.init(document.getElementById('bain'));

                  option = {
                    color: ['#D75152'],
                    tooltip : {
                      trigger: 'axis',
                      axisPointer : {           
                        type : 'shadow'       
                      }
                    },
                    grid: {
                      left: '3%',
                      right: '4%',
                      bottom: '10%',
                      containLabel: true
                    },
                    xAxis : [
                      {
                        type : 'category',
                        data:[10, 52, 200, 334, 390, 330, 220],
                        axisTick: {
                          alignWithLabel: true
                        }
                      }
                    ],
                    yAxis : [
                      {
                        type : 'value'
                      }
                    ],

                    series : [
                      {
                        name:'直接访问',
                        type:'bar',
                        barWidth: '30%',
                        data:[10, 52, 200, 334, 390, 330, 220]
                      }
                    ]
                  };


                  myChart.setOption(option); */
                </script>
              </div>
            </div>
          </div>
          <div class="youepng fr">
            <div class="hd"><h2>下属组织</h2></div>
            <div class="bd">
              <ul>
              
              <c:forEach var="child_info" items="${list_zz }" >
              
						<c:choose>
						   <c:when test="${child_info.type_id== '631' || child_info.type_id== '632' || child_info.type_id== '931' || child_info.type_id== '932'}">  
						        <li><a href="<%=path%>/Party_brench?code=${child_info.code}" title="${child_info.name}">${child_info.name }</a></li>      
						   </c:when>
						   <c:otherwise> 
						   		<li><a href="<%=path%>/General_party_brench?code=${child_info.code}&type=${child_info.type_id}" title="${child_info.name}">${child_info.name }</a></li>   
						   </c:otherwise>
						</c:choose>
						
					</c:forEach>
               <!--  <li><a href="">×××社区支部</a></li>
                <li><a href="">×××社区支部</a></li>
                <li><a href="">×××社区支部</a></li>
                <li><a href="">×××社区支部</a></li>
                <li><a href="">×××社区支部</a></li>
                <li><a href="">×××社区支部</a></li>
                <li><a href="">×××社区支部</a></li>
                <li><a href="">×××社区支部</a></li>
                <li><a href="">×××社区支部</a></li>
                <li><a href="">×××社区支部</a></li> -->
              </ul>
            </div>
            <script>
            //下属支部轮滑效果
            
    (function($){
    $(window).on("load",function(){
    $(".youepng .bd ul").mCustomScrollbar({
        theme:"minimal"
      });
    });
    })(jQuery);
  </script>
  
  
 
          </div>
        </div>
        <div class="hr-20"></div>
        <div class="partypic xddinw">

          <div class="picparty">
            <h5>党员在线学习数统计</h5>
            <div id="dwain" style="width: 273px;height:333px;border-right: 1px #4A4387 dashed;float:left;"></div>
            <script>
            var  MONTH_DYXF=""//党员先锋
				var  MONTH_JCTT=""//基层教育
				var  MONTH_WDK=""//微党课
				var  MONTH_MRYX=""//每日一学
				var  MONTH_YCJY=""//远程教育
				var  MONTH_TZGG=""//通知公告
				var  MONTH_LXYZ=""//两学一做
				var  MONTH_MYYK=""//每月一考
				var  MONTH_TOTAL=""//总次数
            
            
            var code =window.location.search.split('&')[0].split('=')[1]
            //console.log(code)
            $.ajax({
        		url: '<%=path%>/brench/onLearing',
        		type: 'POST',
        		dataType: 'json',
        		data: {code: code},
        		success:function(data){
        			/* var arrayJsonObject = JSON.parse(data);
        			   console.log(arrayJsonObject); */
       			      MONTH_DYXF=data.data.MONTH_DYXF//党员先锋
       				  MONTH_JCTT=data.data.MONTH_JCTT//基层教育
       				  MONTH_WDK=data.data.MONTH_WDK//微党课
       				  MONTH_MRYX=data.data.MONTH_MRYX//每日一学
       				  MONTH_YCJY=data.data.MONTH_YCJY//远程教育
       				  MONTH_TZGG=data.data.MONTH_TZGG//通知公告
       				  MONTH_LXYZ=data.data.MONTH_LXYZ//两学一做
       				  MONTH_MYYK=data.data.MONTH_MYYK//每月一考
       				  MONTH_TOTAL=data.data.MONTH_TOTAL//总次数
       			   //console.log(data);
        			  var myChart = echarts.init(document.getElementById('dwain'));

                      option = {
                        title : {
                          text: '',
                          subtext: '',
                          x:'center'
                        },
                        tooltip : {
                          trigger: 'item',
                          formatter: "{a} <br/>{b} : {c} ({d}%)"
                        },
                        legend: {
                          orient: 'vertical',
                          left: 'left',
                          data: ['远程教育','基层头条','通知公告','微党课','两学一做','每日一学','每月一考']
                        },
                        series : [
                          {
                            name: '',
                            type: 'pie',
                            radius : '40%',
                            center: ['50%', '75%'],
                            data:[
                              {value:MONTH_DYXF, name:'党员先锋'},
                              {value:MONTH_YCJY, name:'远程教育'},
                              {value:MONTH_JCTT, name:'基层头条'},
                              {value:MONTH_TZGG, name:'通知公告'},
                              {value:MONTH_WDK, name:'微党课'},
                              {value:MONTH_LXYZ, name:'两学一做'},
                              {value:MONTH_MRYX, name:'每日一学'},
                              {value:MONTH_MYYK, name:'每月一考'}
                            ],
                            itemStyle: {
                              emphasis: {
                                shadowBlur: 10,
                                shadowOffsetX: 0,
                                shadowColor: 'rgba(0, 0, 0, 0.5)'
                              }
                            }
                          }
                        ]
                      };



                      myChart.setOption(option);
            
        		   },error:function(err){
                      	console.log("error")
                      }
               	})
                   
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            </script>

            <div id="dwaer" style="width: 740px;height:333px;border-right: 1px #4A4387 dashed;float:left;"></div>
            <script>
            
            
            
            var code =window.location.search.split('&')[0].split('=')[1]
            //console.log(code)
            var monthdata;
            var montharry = [];
            $.ajax({
        		url: '<%=path%>/brench/onLearing',
        		type: 'POST',
        		dataType: 'json',
        		data: {code: code},
        		success:function(data){
        			/* var arrayJsonObject = JSON.parse(data);
        			   console.log(arrayJsonObject); */
                  monthdata = data.data.MONTH_DATA
                  $.each(monthdata,function(i,n){
                	  montharry[i]=n.FRACTION;
                  });
                  console.log(montharry);
        			
                  var myChart = echarts.init(document.getElementById('dwaer'));
                  var option = {
                    title: {
                      text: '党委考核趋势',

                      top:10,
                      left:16,

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
                      x:34,
                      y:50,
                      width:700,



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

                      data: [ 0,10,20,30,40,50,60,70,80,90,100],
                      type: 'value'

                    },
                    series: [{
                      //       data: [10,30, 20, 40, 43, 52, 62, 70, 43,88, 40, 43, 52],
                      data:montharry,
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
        </div>
      </div>

    </div>




    <script src="<%=path%>/asset/cssdw/script.js"></script>
    <script type="text/javascript" src="<%=path%>/asset/cssdw/jquery.mcustomscrollbar.concat.min.js"></script>
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
          left:16,

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
          x:34,
          y:50,
          width:400,



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


       //支部排名的轮滑效果
     <!--   <script>
    (function($){
    $(window).on("load",function(){
    $(".dayuan").mCustomScrollbar({
        theme:"minimal"
      });
    
    });
    })(jQuery);
  </script> -->
  
  
  
  

  </body>
</html>



