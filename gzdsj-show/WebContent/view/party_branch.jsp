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

      body{overflow-x: hidden;background:url(<%=path%>/asset/imagedw/shequx.jpg) no-repeat top center; }
    </style>
    <div class="toop">
      <a href="javascript:history.go(-1)" style="border-radius:6%; display:  block;height: 50px;width: 138px;position:  fixed;top: 10px;right: 34px;background: #212E73;color: #fff;line-height: 50px;text-align:  center;font-size: 18px;">返回 >></a>

      <div class="ftjtit">
        <h3 class="ftreet"><span>${memb_list1[0].PO_NAME}</span></h3>
      </div>
    </div>
    <div class="qbjdbg">
      <div class="zuoqbjdbg fl">
        <div class="zuoqgeyi">
          <div class="zyigeyi fl">
            <div class="zyigeer">
              <div class="zuoged fl">
                <ul>
                  <li class="dweisj">
                    <h6>支部书记</h6>
                    <div class="yigeshuji">
                      <div class="bd">
                        <ul class="picList">
                         <%--  <li>
                            <div class="pic"><a href="/testgzbig_show/party_member_data?code=36070200100060002" ><img src="<%=path%>/asset/imagedw/ffd49804-c71c-4080-9da5-4028409b2463.png" /></a></div>
                            <div class="title">
                              <a href="/testgzbig_show/party_member_data?code=36070200100060002" >刘远新</a>

                            </div>
                          </li> --%>


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
									




                        </ul>
                      </div>
                    </div>
                  </li>
                  <li class="dweifu">
                    <h6>总支部副书记</h6>
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



<%-- 
                          <li>
                            <div class="pic"><a href="/testgzbig_show/party_member_data?code=36070200100060038" ><img src="<%=path%>/asset/imagedw/991eff86-fe51-4d92-b8f2-5567db978e51.png" /></a></div>
                            <div class="title"><a href="/testgzbig_show/party_member_data?code=36070200100060038" >温波光</a></div>
                          </li>

                          <li>
                            <div class="pic"><a href="/testgzbig_show/party_member_data?code=36070200500050017" ><img src="<%=path%>/asset/imagedw/2a1d7d5e-75f1-45ad-b17a-b08a64df9e31.jpg" /></a></div>
                            <div class="title"><a href="/testgzbig_show/party_member_data?code=36070200500050017" >陈洪文</a></div>
                          </li> --%>

                        </ul>
                      </div>
                    </div>
                  </li>
                  <li class="dweiyuan">
                    <h6>总支部委员</h6>
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
                          </li> --%>
                        </ul>
                      </div>
                    </div>
                  </li>
                </ul>
              </div>
              <div class="youged fr">
                <h6>党员app使用情况</h6>
                <div id="mghe" style="height: 227px;"></div>
              </div>
              <script type="text/javascript">
              var month = [];
              var monthsum =[];
              var code =window.location.search.split('&')[0].split('=')[1]
              console.log(code);
              $.ajax({
            		
            		url: '<%=path%>/party_br/brenchApp',
            		type: 'POST',
            		dataType: 'json',
            		data: {code: code},
            		success:function(data){
             // console.log(data.data);
             var d = data.data;
              $.each(d,function(i,n){
            	  month[i]=i+1;
            	  monthsum[i]= n.SUM;
            	  
            	 console.log(n)
            	  
            	  var myChart = echarts.init(document.getElementById('mghe'));

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
            	  bottom: '5%',
            	  containLabel: true
            	  },
            	  xAxis : [
            	  {
            	  type : 'category',
            	  data:month,
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
            	  name:'',
            	  type:'bar',
            	  barWidth: '30%',
            	  data:monthsum
            	  }
            	  ]
            	  };


            	  myChart.setOption(option);
              });
              
            		},error:function(err){
                     	console.log("error")
                    }
             	})
              </script>
              
            </div>
            <div class="zergeer">
              <div class="zuoerd fl">
                <h2>党员在线学习数统计</h2>
                <div id="mghemoe" style="height: 210px;"></div>
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
  				var  MONTH_TOTAL=""//总次数
  					 var code =window.location.search.split('&')[0].split('=')[1]
              $.ajax({
            		url: '<%=path%>/brench/onLearing',
            		type: 'POST',
            		dataType: 'json',
            		data: {code: code},
            		success:function(data){
            			 MONTH_DYXF=data.data.MONTH_DYXF//党员先锋
          				  MONTH_JCTT=data.data.MONTH_JCTT//基层头条
          				  MONTH_WDK=data.data.MONTH_WDK//微党课
          				  MONTH_MRYX=data.data.MONTH_MRYX//每日一学
          				  MONTH_YCJY=data.data.MONTH_YCJY//远程教育
          				  MONTH_TZGG=data.data.MONTH_TZGG//通知公告
          				  MONTH_LXYZ=data.data.MONTH_LXYZ//两学一做
          				  MONTH_MYYK=data.data.MONTH_MYYK//每月一考
          				  MONTH_TOTAL=data.data.MONTH_TOTAL//总次数
          				  
          				  console.log(MONTH_TOTAL);
          				var myChart = echarts.init(document.getElementById('mghemoe'));

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
            			 left: 'right',
            			 textStyle:{
            			 color:'#fff'
            			 },
            			 data: ['党员先锋 '+MONTH_DYXF,'远程教育 '+MONTH_YCJY,'基层头条    '+MONTH_JCTT,'通知公告    '+MONTH_TZGG,'微党课 '+MONTH_WDK,'两学一做    '+MONTH_LXYZ,'每日一学'+MONTH_MRYX,'每月一考    '+MONTH_MYYK]
            			 },
            			 series : [
            			 {
            			 name: '',
            			 type: 'pie',
            			 radius : '40%',
            			 center: ['37%', '40%'],
            			 data:[
            			 {value:MONTH_DYXF, name:'党员先锋 '+MONTH_DYXF},
            			 {value:MONTH_YCJY, name:'远程教育 '+MONTH_YCJY},
            			 {value:MONTH_JCTT, name:'基层头条   '+MONTH_JCTT},
            			 {value:MONTH_TZGG, name:'通知公告    '+MONTH_TZGG},
            			 {value:MONTH_WDK, name:'微党课 '+MONTH_WDK},
            			 {value:MONTH_LXYZ, name:'两学一做    '+MONTH_LXYZ},
            			 {value:MONTH_MRYX, name:'每日一学'+MONTH_MRYX},
            			 {value:MONTH_MYYK, name:'每月一考    '+MONTH_MYYK}
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
              
              
              
              
              
              
              <div class="youerd fr">
                <h2>党员在线学习总体趋势</h2>
                <div id="gttmoe" style="height: 225px;"></div>
              </div>

            </div>
          </div>
<script type="text/javascript">
var code =window.location.search.split('&')[0].split('=')[1]
var monthdata;
var montharry = [];
$.ajax({
	
	url: '<%=path%>/brench/onLearing',
	type: 'POST',
	dataType: 'json',
	data: {code: code},
	success:function(data){
		 monthdata = data.data.MONTH_DATA
         $.each(monthdata,function(i,n){
       	  montharry[i]=n.FRACTION;
         });
		
		 var myChart = echarts.init(document.getElementById('gttmoe'));
		 var option = {
		 title: {
		 text: '',

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
		 y:20,
		 width:600,
		 height:160,



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







          <div class="yyigeyi fr">
            <div class="yysaeyi">
              <div class="hd">
                <h2>支部考核排名</h2>
                <span>当前排名：${org.pank }</span>
                <div id="kkhe" style="height: 227px;">
                </div>
              </div>
            </div>
            
            <script type="text/javascript">
            var code =window.location.search.split('&')[0].split('=')[1]
            var FRACTION_NJL="";
            var TOTAL="";
            var FRACTION_ZDL="";
            var FRACTION_ZZSH="";
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
    			    
    			    console.log(FRACTION_ZZSH);
    			    /*支部考核排名*/
    			    
    			    
    			    var myChart = echarts.init(document.getElementById('kkhe'));
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
    			    bottom: 90,
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
    			    {value:3.6,name:'参与组织生活'},
    			    {value:3.6,name:'凝聚力'},
    			    {value:3.6,name:'战斗力'},
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
            
            
            
            
            
            <div class="yywueyi">
              <h2>支部考核成绩总体趋势</h2>
              <div id="kghytkhe" style="height: 227px;"></div>
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
          				//console.log(n.FRACTION);
          				
          				
          				var myChart = echarts.init(document.getElementById('kghytkhe'));
          				var option = {
          				title: {
          				text: '',

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
          				y:20,
          				width:380,
          				height:160,



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

          				data:arr,
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
          				
          				
          				
          				
          				
          			});
          			//console.log(data);
          			
          			
          		},error:function(err){
                 	console.log("error")
                }
         	})
            
            </script>
            
            
          </div>
        </div>
        <div class="zuoqgeer">
          <div class="zuohpicture fl">
            <h2>党组织生活正常情况</h2>
            <div class="bd">
              <ul id="zxiandcd">
               <%--  <li>
                  <div class="kgor fl"><img src="<%=path%>/asset/imagedw/wfwef.jpg"></div>
                  <div class="ysor fl"><a href="">廖俊波：把百姓记心头</a><p>福建南平境内的长深高速公路像一条蜿蜒的曲线，道路两旁山峦起伏，风光旖旎，景色秀美，一</p></div>
                </li>
                <li style="border-bottom: 1px dashed #616C9C;">
                  <div class="kgor fl"><img src="<%=path%>/asset/imagedw/asfdw.jpg"></div>
                  <div class="ysor fl"><a href="">廖俊波：把百姓记心头</a><p>福建南平境内的长深高速公路像一条蜿蜒的曲线，道路两旁山峦起伏，风光旖旎，景色秀美，一</p></div>
                </li> --%>
              </ul>
            </div>
          </div>
          
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
      			//console.log(data);
      			   var li = data.data;
      			   var p="";
      			 $.each(li,function(i,n){
      				  var montharry = [];
      				  var r =n.POLITE_IMAGE;
      				$.each(r,function(i,n){
      					montharry[i]=n.IMAGE_PATH	
      				}); 
      				
      				
      				p+='<li style="border-bottom: 1px dashed #616C9C;"><div class="kgor fl"><img src="'+montharry[0]+'"></div><div class="ysor fl"><a href="">'+n.POLITE_TITLE+'</a><p>'+n.POLITE_DETAILS+'</p></div></li>'; 
      			 });
      			 $("#zxiandcd").html(p);
      			//console.log(data.data);
             },error:function(err){
             	console.log("error")
             }
      	})
          
          
          
          
          
          </script>
          
          
          
          
          
          
          
          
          <div class="youhpicture fr">
            <h2>支部图片</h2>
            <div class="bd">
              <ul>
                <li>
                  <div class="pic"><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/wfwe.jpg" /></a></div>
                  <div class="title"><a href="" target="_blank">图片标题</a></div>
                </li>
                <li>
                  <div class="pic"><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/wfwe.jpg" /></a></div>
                  <div class="title"><a href="" target="_blank">图片标题</a></div>
                </li>
                <li>
                  <div class="pic"><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/wfwe.jpg" /></a></div>
                  <div class="title"><a href="" target="_blank">图片标题</a></div>
                </li>
                <li>
                  <div class="pic"><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/wfwe.jpg" /></a></div>
                  <div class="title"><a href="" target="_blank">图片标题</a></div>
                </li>
                <li>
                  <div class="pic"><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/wfwe.jpg" /></a></div>
                  <div class="title"><a href="" target="_blank">图片标题</a></div>
                </li>
                <li>
                  <div class="pic"><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/wfwe.jpg" /></a></div>
                  <div class="title"><a href="" target="_blank">图片标题</a></div>
                </li>
                <li>
                  <div class="pic"><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/wfwe.jpg" /></a></div>
                  <div class="title"><a href="" target="_blank">图片标题</a></div>
                </li>
              </ul>
              <script type="text/javascript">
                jQuery(".youhpicture").slide({mainCell:".bd ul",autoPlay:true,effect:"leftMarquee",vis:4,interTime:50});</script>
            </div>
          </div>
        </div>
      </div>

      <div class="youqbjdbg fr">
        <h2>党党员考核排名</h2>
        <div class="bd">
          <ul>
          <c:forEach var="memb_info" items="${memb_list1}" begin="0" step="1" >
					 <!-- <li> -->
					 
					  <li><img src="${memb_info.HEARDURL}"> <span>${memb_info.PM_NAME}   &nbsp;&nbsp;&nbsp;   ${memb_info.PM_SCORE }分  &nbsp;&nbsp;&nbsp;  第${memb_info.PM_RANK }名</span> </li>
					 
					 
						<%-- <span class="toux fl"><img src="${memb_info.HEARDURL}" width="50" height="60" alt=""></span>
						<a href="${BASE}/party_member_data?code=${memb_info.PM_CODE}" class="name fl">${memb_info.PM_NAME}</a>
						<span class="order fr">排名：${memb_info.PM_RANK }</span>
						<span class="fraction fr">考核分：${memb_info.PM_SCORE }</span>
					 </li> --%>
			 	</c:forEach>
          
      <%--       <li><img src="<%=path%>/asset/imagedw/sdasf.jpg"> <span>李少芬   &nbsp;&nbsp;&nbsp;   95分 &nbsp; &nbsp;&nbsp;  第1名</span> </li>
            <li><img src="<%=path%>/asset/imagedw/sdasf.jpg"> <span>李少芬   &nbsp;&nbsp;&nbsp;   95分  &nbsp;&nbsp;&nbsp;  第1名</span> </li>
            <li><img src="<%=path%>/asset/imagedw/sdasf.jpg"> <span>李少芬   &nbsp;&nbsp;&nbsp;   95分  &nbsp;&nbsp;&nbsp;  第1名</span> </li>
            <li><img src="<%=path%>/asset/imagedw/sdasf.jpg"> <span>李少芬   &nbsp;&nbsp;&nbsp;   95分 &nbsp; &nbsp;&nbsp;  第1名</span> </li>
            <li><img src="<%=path%>/asset/imagedw/sdasf.jpg"> <span>李少芬   &nbsp;&nbsp;&nbsp;   95分  &nbsp;&nbsp;&nbsp;  第1名</span> </li>
            <li><img src="<%=path%>/asset/imagedw/sdasf.jpg"> <span>李少芬   &nbsp;&nbsp;&nbsp;   95分  &nbsp;&nbsp;&nbsp;  第1名</span> </li>
            <li><img src="<%=path%>/asset/imagedw/sdasf.jpg"> <span>李少芬   &nbsp;&nbsp;&nbsp;   95分 &nbsp; &nbsp;&nbsp;  第1名</span> </li>
            <li><img src="<%=path%>/asset/imagedw/sdasf.jpg"> <span>李少芬   &nbsp;&nbsp;&nbsp;   95分  &nbsp;&nbsp;&nbsp;  第1名</span> </li>
            <li><img src="<%=path%>/asset/imagedw/sdasf.jpg"> <span>李少芬   &nbsp;&nbsp;&nbsp;   95分  &nbsp;&nbsp;&nbsp;  第1名</span> </li>
            <li><img src="<%=path%>/asset/imagedw/sdasf.jpg"> <span>李少芬   &nbsp;&nbsp;&nbsp;   95分 &nbsp; &nbsp;&nbsp;  第1名</span> </li>
            <li><img src="<%=path%>/asset/imagedw/sdasf.jpg"> <span>李少芬   &nbsp;&nbsp;&nbsp;   95分 &nbsp; &nbsp;&nbsp;  第1名</span> </li>
            <li><img src="<%=path%>/asset/imagedw/sdasf.jpg"> <span>李少芬   &nbsp;&nbsp;&nbsp;   95分  &nbsp;&nbsp;&nbsp;  第1名</span> </li>
            <li><img src="<%=path%>/asset/imagedw/sdasf.jpg"> <span>李少芬   &nbsp;&nbsp;&nbsp;   95分  &nbsp;&nbsp;&nbsp;  第1名</span> </li>
            <li><img src="<%=path%>/asset/imagedw/sdasf.jpg"> <span>李少芬   &nbsp;&nbsp;&nbsp;   95分 &nbsp; &nbsp;&nbsp;  第1名</span> </li>
            <li><img src="<%=path%>/asset/imagedw/sdasf.jpg"> <span>李少芬   &nbsp;&nbsp;&nbsp;   95分  &nbsp;&nbsp;&nbsp;  第1名</span> </li>
            <li><img src="<%=path%>/asset/imagedw/sdasf.jpg"> <span>李少芬   &nbsp;&nbsp;&nbsp;   95分  &nbsp;&nbsp;&nbsp;  第1名</span> </li>
            <li><img src="<%=path%>/asset/imagedw/sdasf.jpg"> <span>李少芬   &nbsp;&nbsp;&nbsp;   95分 &nbsp; &nbsp;&nbsp;  第1名</span> </li>
            <li><img src="<%=path%>/asset/imagedw/sdasf.jpg"> <span>李少芬   &nbsp;&nbsp;&nbsp;   95分  &nbsp;&nbsp;&nbsp;  第1名</span> </li>
            <li><img src="<%=path%>/asset/imagedw/sdasf.jpg"> <span>李少芬   &nbsp;&nbsp;&nbsp;   95分  &nbsp;&nbsp;&nbsp;  第1名</span> </li>
            <li><img src="<%=path%>/asset/imagedw/sdasf.jpg"> <span>李少芬   &nbsp;&nbsp;&nbsp;   95分 &nbsp; &nbsp;&nbsp;  第1名</span> </li>
            <li><img src="<%=path%>/asset/imagedw/sdasf.jpg"> <span>李少芬   &nbsp;&nbsp;&nbsp;   95分 &nbsp; &nbsp;&nbsp;  第1名</span> </li>
            <li><img src="<%=path%>/asset/imagedw/sdasf.jpg"> <span>李少芬   &nbsp;&nbsp;&nbsp;   95分  &nbsp;&nbsp;&nbsp;  第1名</span> </li>
            <li><img src="<%=path%>/asset/imagedw/sdasf.jpg"> <span>李少芬   &nbsp;&nbsp;&nbsp;   95分  &nbsp;&nbsp;&nbsp;  第1名</span> </li>
            <li><img src="<%=path%>/asset/imagedw/sdasf.jpg"> <span>李少芬   &nbsp;&nbsp;&nbsp;   95分 &nbsp; &nbsp;&nbsp;  第1名</span> </li>
            <li><img src="<%=path%>/asset/imagedw/sdasf.jpg"> <span>李少芬   &nbsp;&nbsp;&nbsp;   95分  &nbsp;&nbsp;&nbsp;  第1名</span> </li>
            <li><img src="<%=path%>/asset/imagedw/sdasf.jpg"> <span>李少芬   &nbsp;&nbsp;&nbsp;   95分  &nbsp;&nbsp;&nbsp;  第1名</span> </li>
            <li><img src="<%=path%>/asset/imagedw/sdasf.jpg"> <span>李少芬   &nbsp;&nbsp;&nbsp;   95分 &nbsp; &nbsp;&nbsp;  第1名</span> </li>
            <li><img src="<%=path%>/asset/imagedw/sdasf.jpg"> <span>李少芬   &nbsp;&nbsp;&nbsp;   95分  &nbsp;&nbsp;&nbsp;  第1名</span> </li>
            <li><img src="<%=path%>/asset/imagedw/sdasf.jpg"> <span>李少芬   &nbsp;&nbsp;&nbsp;   95分  &nbsp;&nbsp;&nbsp;  第1名</span> </li>
            <li><img src="<%=path%>/asset/imagedw/sdasf.jpg"> <span>李少芬   &nbsp;&nbsp;&nbsp;   95分 &nbsp; &nbsp;&nbsp;  第1名</span> </li>
            <li><img src="<%=path%>/asset/imagedw/sdasf.jpg"> <span>李少芬   &nbsp;&nbsp;&nbsp;   95分  &nbsp;&nbsp;&nbsp;  第1名</span> </li>
            <li style="border-bottom: 1px dashed #626B94;"><img src="<%=path%>/asset/imagedw/sdasf.jpg"> <span>李少芬   &nbsp;&nbsp;&nbsp;   95分  &nbsp;&nbsp;&nbsp;  第1名</span> </li>
           --%>
          </ul>
          <script>
            (function($){
              $(window).on("load",function(){
                $(".youqbjdbg .bd ul").mCustomScrollbar({
                  theme:"minimal"
                });
              });
            })(jQuery);
          </script>
        </div>

      </div>
      <script src="<%=path%>/asset/cssdw/sheqy.js"></script>
      <script src="<%=path%>/asset/cssdw/script.js"></script>
      <script type="text/javascript" src="<%=path%>/asset/cssdw/jquery.mcustomscrollbar.concat.min.js"></script>

      <script type="text/javascript">
        jQuery(".shujicroll").slide({mainCell:".bd ul",autoPage:true,effect:"topLoop",autoPlay:true,vis:1});
      </script>
    </div>
    
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






