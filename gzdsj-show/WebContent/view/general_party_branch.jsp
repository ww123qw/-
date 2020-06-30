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
    <link rel="stylesheet" type="text/css" href="<%=path %>/asset/cssdw/cssd/reset.css" />
    <link href="<%=path %>/asset/cssdw/cssd/css.css" type="text/css" rel="stylesheet" />
    <link href="<%=path %>/asset/cssdw/cssd/jquery.mcustomscrollbar.css" type="text/css" rel="stylesheet" />
      <script src="http://cdn.bootcss.com/jquery/1.12.3/jquery.min.js"></script> 
    <script src="<%=path %>/asset/cssdw/layer/layer.js"></script>
    <script src="<%=path %>/asset/cssdw/cssd/jquery.js"></script>
    <script type="text/javascript" src="<%=path %>/asset/cssdw/cssd/superslide.js"></script>
    <script src="<%=path %>/asset/cssdw/cssd/echarts.common.min.js"></script>
 <script>
$(document).ready(function(){
  $("#qut,#wa,#v,#unqut").mouseenter(function(){
    $(this).mCustomScrollbar({
        theme:"minimal"
    });
  });
  
});
</script>
 
  </head>
  <body>
    <style>
      body{overflow: hidden;background:#09236d url(<%=path%>/asset/imagedw/bodyi.jpg) no-repeat top center;}
    </style>
    <div class="top">
      <div class="dsjtit">
        <h3 class="street"><span id="namedw">${list_zz[0].name }</span> </h3>
      <div class="stzyjf"><a href="javascript:history.go(-1)">返回</a></div>
      </div>
    </div>
    <div class="main mxs">
      <div class="bvenmk fl">

        <div class="zuoged">  
          <ul>
            <li class="dweisj">
              <h6>总支书记</h6>
              <div class="yigeshuji">
                <div class="bd">
                  <ul class="picList">
                    <%-- <li>
                      <div class="pic"><a href="" ><img src="<%=path%>/asset/imagedw/jmzd.jpg" /></a></div>
                      <div class="title"><a href="" >颜龙华</a></div>
                    </li> --%>
                    
                    <c:choose>
									<c:when test="${fn:length(shuji)==0}">
									<li>
											<div class="pic"><a href="#" ><img src="<%=path %>/asset/imagedw/touxiang.jpg" /></a></div>
											<div class="title"><a href="#" >暂缺</a></div>
										</li>				
									</c:when>
									<c:otherwise>
									
										<li>
											<div class="pic"><a href="<%=path%>/party_member_data?code=${shuji.PM_CODE}" ><img src="${shuji.HEAD_IMG}" /></a></div>
											<div class="title">
											<a href="<%=path%>/party_member_data?code=${shuji.PM_CODE}" >${shuji.LEADER_NAME}</a>
											
											</div>
										</li>
									</c:otherwise>
									
									</c:choose>
									
									
                  </ul>

                </div>
              </div>
            </li>
            <li>
              <h6>总支副书记</h6>
              <div class="shujicroll">
                <div class="bd">
                  <ul class="picList">
                  
                  <c:choose>
									<c:when test="${fn:length(fushuji)==0}">
									<li>
											<div class="pic"><a href="#" ><img src="<%=path %>/asset/imagedw/touxiang.jpg" /></a></div>
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
									
                  
                  
                  
                  
                  
                    <%-- <li>
                      <div class="pic"><a href="" ><img src="<%=path%>/asset/imagedw/jmzd.jpg" /></a></div>
                      <div class="title"><a href="" >颜龙华</a></div>
                    </li>
                    <li>
                      <div class="pic"><a href="" ><img src="<%=path%>/asset/imagedw/jmzd.jpg" /></a></div>
                      <div class="title"><a href="" >颜龙华</a></div>
                    </li>
                    <li>
                      <div class="pic"><a href="" ><img src="<%=path%>/asset/imagedw/jmzd.jpg" /></a></div>
                      <div class="title"><a href="" >颜龙华</a></div>
                    </li>
 --%>
                  </ul>
                </div>
              </div>
            </li>
            <li>
              <h6>总支委员</h6>
              <div class="shujicroll">
                <div class="bd">
                  <ul class="picList">
                  
                  <c:choose>
									<c:when test="${fn:length(dangwei)==0}">
									<li>
											<div class="pic"><a href="#" ><img src="<%=path %>/asset/imagedw/touxiang.jpg" /></a></div>
											<div class="title"><a href="#" >暂缺</a></div>
										</li>				
									</c:when>
									<c:otherwise>
									
									<c:forEach var="memb" items="${dangwei}" begin="0" step="1">
									<li>
											<div class="pic"><a href="<%=path %>/party_member_data?code=${memb.PM_CODE }" ><img src="${memb.HEAD_IMG }" /></a></div>
											<div class="title"><a href="<%=path %>/party_member_data?code=${memb.PM_CODE }" >${memb.LEADER_NAME}</a></div>
										</li>
									</c:forEach>
									</c:otherwise>
									
									</c:choose>
                  
                  
                  
                    <%-- <li>
                      <div class="pic"><a href="" ><img src="<%=path%>/asset/imagedw/jmzd.jpg" /></a></div>
                      <div class="title"><a href="" >颜龙华</a></div>
                    </li>
                    <li>
                      <div class="pic"><a href="" ><img src="<%=path%>/asset/imagedw/jmzd.jpg" /></a></div>
                      <div class="title"><a href="" >颜龙华</a></div>
                    </li>
                    <li>
                      <div class="pic"><a href="" ><img src="<%=path%>/asset/imagedw/jmzd.jpg" /></a></div>
                      <div class="title"><a href="" >颜龙华</a></div>
                    </li> --%>

                  </ul>
                </div>
              </div>
            </li>
          </ul>
        </div>
            <script type="text/javascript">
jQuery(".shujicroll").slide({mainCell:".bd ul",autoPage:true,effect:"topLoop",autoPlay:true,vis:1});
</script> 
 <script>
            var code =window.location.search.split('&')[0].split('=')[1]
            //console.log(code)
            var montharry = [];
            $.ajax({
        		url: '<%=path%>/brench/BrenchSank',
        		type: 'POST',
        		dataType: 'json',
        		data: {code: code},
        		success:function(data){ 
        			$.each(data,function(i,n){
        				//console.log(data.length-1);
        				 if(data.length-1==i){
        					 $("#pai").append(n.pank);
        				} 
        			});
        			/* $("#namedw").append(data.name);
        			$("#pai").append(data.pank);
        			 */
        			 $('.street').width($('.street').text().length*30+20);
        			//console.log(data);
        		},error:function(err){
    	          	console.log("error")
  	          }
  	   	})
  	       

  	            
  	            
  	             
  	            </script>
        <div class="zuoger">
          <h2>总支考核趋势</h2>
          <span id="pai">当前排名：</span>
          <h3>${months}月</h3>
          <div id="gttmoe" style="height: 160px;"></div>
          <script type="text/javascript">
            $(function() {

              $('.progressbar').each(function(){
                var t = $(this),
                    dataperc = t.attr('data-perc'),
                    barperc = Math.round(dataperc);
                t.find('.bar').animate({width:barperc}, dataperc*25);
                t.find('.label').append('<div class="perc"></div>');

                function perc(){
                  var length = t.find('.bar').css('width'),
                      perc = Math.round(parseInt(length)),
                      labelpos = (parseInt(length));
                  // t.find('.label').css('left', labelpos);
                  t.find('.label').css('left', 100);
                  t.find('.perc').text(perc+'');
                }
                perc();
                setInterval(perc, 0); 
              });

            });
          </script>
          
           <script>
            
            
            
            var code =window.location.search.split('&')[0].split('=')[1]
            //console.log(code)
            var montharry = [];
            $.ajax({
        		url: '<%=path%>/brench/getOverallTestTrend',
        		type: 'POST',
        		dataType: 'json',
        		data: {code: code,
        			type:"pocode"},
        		success:function(data){
        			//console.log(data);
                    $.each(data.data,function(i,n){
                  	  montharry[i]=n.FRACTION;
                  	 //console.log(montharry[i]);
                    }); 
                   
        			// 党委考核趋势
                    var myChart = echarts.init(document.getElementById('gttmoe'));
                    var option = {
                    title: {
                    text: '',

                    top:0,
                    left:20,

                    textStyle:{
                    fontWeight:'100',
                    fontSize:18,
                    color:'#1ed7ff'
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
                    x:45,
                    y:20,
                    width:350,
                    height:120,



                    },
                    xAxis: {
                    splitLine:{
                    show:true,
                    lineStyle:{
                    color: ['#25386E', '#25386E'],
                    width: 1
                    }
                    },

                    axisLine: {
                    //onZero: false,
                    lineStyle: {
                    color: '#1ed7ff'
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
                    color: '#1ed7ff'
                    }
                    },
                    axisTick: {
                    show: false
                    },


                    type: 'value'

                    },
                    series: [{

                    data:montharry,

                     lineStyle:{
                    color:'#1ed7ff'
                    },

                    areaStyle: {
                      color: {
                        
                        type: 'linear',
                        x: 0,
                        y: 0,
                        x2: 0,
                        y2: 1,
                        colorStops: [{
                            offset: 0,color: '#0c4380'
                        }, {
                            offset: 1, color: '#0c4380'
                        }],
                                 
                      }    
                    },
                       itemStyle:{
                            color:'#1ed7ff',
                        },
                    type: 'line',



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
        <div class="zuogsa">
          <h2>支部综合得分排名</h2>
          <div class="xinjtitle-gg">
            <div class="xinjtitle">
              <span class="xinj-yi">社区名称 </span>
              <span class="xinj-id">排名</span>
              <span class="xinj-con">得分</span>
            </div>
            <ul class="resultlist" id="resultUl" >
              <!-- <li><a href="" target="_blank"><span class="xinj-yi">赣州市南外社区党支部 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href="" target="_blank"><span class="xinj-yi">赣州市南外社区党支部 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href="" target="_blank"><span class="xinj-yi">赣州市南外社区党支部 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href="" target="_blank"><span class="xinj-yi">赣州市南外社区党支部 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li> -->
            </ul>
          </div>


        </div>
        
        
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
    				 if(i>3){
    					 return;
    				 }
    			   var e=i+1;//排名
                   var tit = n.NAME;//支部名称
                   var score =n.MON;
                  var arrayJsonObject = JSON.parse(score).total.toFixed(3);
                  var urh="<%=path%>/Party_brench?code="+n.PO_CODE;
                  //console.log(arrayJsonObject.total);
                 /*  console.log(arrayJsonObject) */ 
                   p+='<li><a href="'+urh+'" ><span class="xinj-yi">'+tit+'</span><span class="xinj-id">'+e+'</span><span class="xinj-con">'+arrayJsonObject+'</span></a></li>';
                    
                 });
    			 //console.log(p);
    			 $("#resultUl").html(p);
           },error:function(err){
           	console.log("error")
           }
    	})
        
        
        
        </script>
        
        
        
        
        
        
        
        <div class="zuogsi">
          <h2>考核成绩靠前党员</h2>
          <div class="bd">
            <!-- <ul>
<li><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span>李少芬</span>  <img class="deq" src="<%=path%>/asset/imagedw/djpyi.png">   &nbsp;&nbsp;&nbsp; <span>    95分 &nbsp; &nbsp;&nbsp; </span>  <p>第1名</p></li>
<li><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span>李少芬</span>  <img class="deq" src="image/djper.png">   &nbsp;&nbsp;&nbsp; <span>    95分 &nbsp; &nbsp;&nbsp; </span>  <p>第2名</p></li>
<li><img src="image/jmzd.jpg"><span>李少芬</span>  <img class="deq" src="image/djpsa.png">   &nbsp;&nbsp;&nbsp; <span>    95分 &nbsp; &nbsp;&nbsp; </span>  <p>第3名</p></li>
</ul> -->
            <table>
              <tbody id="dy">
               <%--  <tr>
                  <td width="34"><img src="<%=path%>/asset/imagedw/jmzd.jpg"></td>
                  <td width="74">李少芬</td>
                  <td width="36">  <img class="deq" src="<%=path%>/asset/imagedw/djpyi.png">  </td> 
                  <td width="86"><td/>
                  <td width="60">95分</td> 
                  <td width="77">第1名</td>
                </tr>
                <tr>
                  <td width="34"><img src="<%=path%>/asset/imagedw/jmzd.jpg"></td>
                  <td width="74">李少芬</td>
                  <td width="36">  <img class="deq" src="<%=path%>/asset/imagedw/djper.png">  </td> 
                  <td width="86"><td/>
                  <td width="60">95分</td> 
                  <td width="77">第2名</td>
                </tr>
                <tr>
                  <td width="34"><img src="<%=path%>/asset/imagedw/jmzd.jpg"></td>
                  <td width="74">李少芬</td>
                  <td width="36">  <img class="deq" src="<%=path%>/asset/imagedw/djpsa.png">  </td> 
                  <td width="86"><td/>
                  <td width="60">95分</td> 
                  <td width="77">第3名</td>
                </tr>
                <tr style="border-bottom: dashed 1px #344473;">
                  <td width="34"><img src="<%=path%>/asset/imagedw/jmzd.jpg"></td>
                  <td width="74">李少芬</td>
                  <td width="36">  <img class="deq" src="<%=path%>/asset/imagedw/djpsa.png">  </td> 
                  <td width="86"><td/>
                  <td width="60">95分</td> 
                  <td width="77">第4名</td>
                </tr> --%>
              </td>
            </tr>
          </td>

        </tbody>
      </table>

    </div>


  </div>
</div>

<script type="text/javascript">
              var  a="";
              var  p="";
              var code =window.location.search.split('&')[0].split('=')[1]
              $.ajax({
            		url: '<%=path%>/party_br/gatPmSeRanka',
            		type: 'POST',
            		dataType: 'json',
            		data: {code: code},
            		success:function(data){
            			//console.log(data)
            			 $.each(data.data,function(i,n){
            				 if(i>3){
            					
            					 return;
            				} 
            				// console.log(n);
            				var heal="<%=path %>/party_member_data?code="+n.PM_CODE
            				 p='<%=path%>/asset/imagedw/djpy'+i+'.png'
            				 a+= '<tr style="border-bottom: dashed 1px #344473;"><td width="34"><img src="'+n.HEARDURL+'" class="ima"></td><td width="74"><a href="'+heal+'" style="color: #1ed7ff;">'+n.PM_NAME+'</a></td><td width="36"><img class="deq" src="'+p+'">  </td><td width="86"><td/><td width="100">'+n.PM_SCORE+'分</td><td width="77">第'+n.PM_RANK+'名</td></tr>'
            				
            					 
            			//console.log(n);
            			 }); 
            			
            			 $("#dy").html(a);
            			 if($(".ima").attr('src')==''){
            	        	   $(".ima").attr('src','<%=path%>/asset/imagedw/touxiang.jpg')
            	           }
            			//console.log(data);
            		},error:function(err){
                     	console.log("error")
                    }
             	})
              </script> 





<div class="zhonmk fl">
  <div class="zhonyi">
    <div class="branches">
      <ul>
        <li>
          <h2>支部数</h2>
          <h1 id="zbs"></h1>
        </li>
        <li>
          <h2>党员数</h2>
          <h1 id="dys"></h1>
        </li>
        <li>
          <h2>本月党员生活发布数</h2>
          <h1 id="shs"></h1>
        </li>
      </ul>
    </div>
    <script type="text/javascript">
    var code =window.location.search.split('&')[0].split('=')[1]
            $.ajax({
        		url: '<%=path%>/brench/NineGetData',
        		type: 'POST',
        		dataType: 'json',
        		data: {code: code},
        		success:function(data){
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
    <div class="bghtmghe">
      <h2>组织生活正常情况</h2>
      <span >${time}</span>
      <div id="mghe" style="height: 300px;"></div>
    </div> 
     <script type="text/javascript">
     var qialife=[];
     var colorzhengc = new echarts.graphic.LinearGradient(
 	        0, 0, 0, 1,
 	        [
 	            {offset: 0, color: '#1bc23bfc'},
 	            {offset: 0.2, color: '#1bc23bb3'},
 	            {offset: 1, color: '#1bc23b6e'}
 	        ]
 	    )
 	var coloryujin = new echarts.graphic.LinearGradient(
 	        0, 0, 0, 1,
 	        [
 	            {offset: 0, color: '#ed910efc'},
 	            {offset: 0.2, color: '#ed910eb3'},
 	            {offset: 1, color: '#ed910e6e'}
 	        ]
 	    )
 	var colorfeizc = new echarts.graphic.LinearGradient(
 	        0, 0, 0, 1,
 	        [
 	            {offset: 0, color: '#f4475dfc'},
 	            {offset: 0.2, color: '#f4475db3'},
 	            {offset: 1, color: '#f4475d6e'}
 	        ]
 	    )
 	var colorqita = new echarts.graphic.LinearGradient(
 	        0, 0, 0, 1,
 	        [
 	            {offset: 0, color: '#959595fc'},
 	            {offset: 0.2, color: '#959595b3'},
 	            {offset: 1, color: '#9595956e'}
 	        ]
 	    )
    var code =window.location.search.split('&')[0].split('=')[1]
            $.ajax({
        		url: '<%=path%>/brench/orgLifeStatus',
        		type: 'POST',
        		dataType: 'json',
        		data: {code: code},
        		success:function(data){
        			qialife[0]=data.data.PO_QUALIFIED;
        			qialife[1]=data.data.PO_WARNING;
        			qialife[2]=data.data.PO_UNQUALIFIED;
        			qialife[3]=data.data.PO_VPLIFIED;
        			
        				//console.log(qialife);
        			
        		//党委正常情况
        				 var myChart = echarts.init(document.getElementById('mghe'));
        				// Generate data
        				var category = [];
        				var dottedBase = +new Date();
        				var lineData = [];
        				var barData = [];




        				// option
        				option = {
        				    backgroundColor: '#081e62',
        				    // tooltip: {
        				    //     trigger: 'axis',
        				    //     axisPointer: {
        				    //         type: 'shadow'
        				    //     }
        				    // },
        				    legend: {
        				        data: ['line', 'bar'],
        				        textStyle: {
        				            color: '#1ed7ff'
        				        }
        				    },
        				    
        				    xAxis: {
        				       data: ['正常支部数', '受警告支部数', '非正常支部数', '其它支部数'],
        				       splitLine: {show: false},
        				              
        				          axisLine: {
        				            lineStyle: {
        				                color: '#1ed7ff'
        				            }
        				        },
        				        axisLabel: {
        			                show: true,
        			                textStyle: {
        			                	color: function (value) {
        			                	      switch(value) {
        			                	         case '正常支部数':
        			                	           return '#1bc23b'
        			                	            break;
        			                	         case '受警告支部数':
        			                	            return '#ed910e'
        			                	            break;
        			                	          case '非正常支部数':
        			                	            return '#f4475d'
        			                	            break;
        			                	         default:
        			                	           return '#959595'
        			                	      } 
        			                	    } 
        			                }
        				        }
        				           
        				            
        				        
        				    },
        				    
        				      textStyle:{
        				                  color: '#1ed7ff'
        				                },
        				    yAxis: {
        				        splitLine: {show: false},
        				        axisLine: {
        				            lineStyle: {
        				                color: '#1ed7ff'
        				            }
        				        }
        				    },
        				    
        				    series: [{
        				        name: 'r',
        				        type: 'bar',
        				        barWidth: 30,
        				           label: {
        				                normal: {
        				                    show: true,
        				                    position: 'top',
        				                    color: '#1ed7ff'
        				                }
        				            },

        				        itemStyle: {
        				            normal: {
        				                barBorderRadius: [15, 15, 0, 0],
        				                color: function(params) {var colorList = [colorzhengc,coloryujin,colorfeizc,colorqita];return colorList[params.dataIndex]}
        				            }
        				        },
        				         z: -12,
        				       data:qialife
        				    }]
        				};
        				myChart.setOption(option);
        			
        		},error:function(err){
                 	console.log("error")
                 }
          	})
              
        
        
        
        </script>
    
    
<div class="sunshineabgwe">
    <div class="sunshineaffairs">
      <h3>
        <a href="#" ><b style="color: #19b53d;">正常支部</b></a>
        <ul class="affairslist fr" id="qut">
          <%-- <li><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span> 南外社区党支部</span></a></li>
          <li><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span> 南外社区党支部</span></a></li>
          <li><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span> 南外社区党支部</span></a></li>
          <li style="border-bottom: dashed 1px #344473;"><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span> 南外社区党支部</span></a></li>
          <li style="border-bottom: dashed 1px #344473;"><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span> 南外社区党支部</span></a></li>
          <li style="border-bottom: dashed 1px #344473;"><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span> 南外社区党支部</span></a></li> --%>
        </ul>
      </h3>
      <h3 style="margin-left: 19px;width:40px;">
        <a href="#"  ><b style="color: #b67522;">预警支部</b></a>
        <ul class="affairslist fr" id="wa">
          <%-- <li><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span> 南外社区党支部</span></a></li>
          <li><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span> 南外社区党支部</span></a></li>
          <li><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span> 南外社区党支部</span></a></li>
          <li style="border-bottom: dashed 1px #344473;"><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span> 南外社区党支部</span></a></li>
          <li style="border-bottom: dashed 1px #344473;"><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span> 南外社区党支部</span></a></li>
          <li style="border-bottom: dashed 1px #344473;"><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span> 南外社区党支部</span></a></li> --%>
        </ul>
      </h3>
      <h3 style="margin-left: 19px;width:40px;">
        <a href="#" ><b style="color: #a3395f;">不合格</b></a>
        <ul class="affairslist fr" id="unqut">
         <%--  <li><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span> 南外社区党支部</span></a></li>
          <li><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span> 南外社区党支部</span></a></li>
          <li><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span> 南外社区党支部</span></a></li>
           <li><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span> 南外社区党支部</span></a></li>
          <li><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span> 南外社区党支部</span></a></li>
          <li><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span> 南外社区党支部</span></a></li> --%>
        <%--   <li style="border-bottom: dashed 1px #344473;"><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span> 南外社区党支部</span></a></li>
          <li style="border-bottom: dashed 1px #344473;"><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span> 南外社区党支部</span></a></li>
          <li style="border-bottom: dashed 1px #344473;"><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span> 南外社区党支部</span></a></li> --%>
        </ul>
      </h3>
      <h3 style="margin-left: 19px;width:40px;">
        <a href="#" ><b style="color: #898b91;">其它支部</b></a>
        <ul class="affairslist fr" id="v">
          <%-- <li><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span> 南外社区党支部</span></a></li>
          <li><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span> 南外社区党支部</span></a></li>
          <li><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span> 南外社区党支部</span></a></li>
          <li style="border-bottom: dashed 1px #344473;"><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span> 南外社区党支部</span></a></li>
          <li style="border-bottom: dashed 1px #344473;"><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span> 南外社区党支部</span></a></li>
          <li style="border-bottom: dashed 1px #344473;"><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span> 南外社区党支部</span></a></li> --%>
        </ul>
      </h3>



    </div>
    </div>
    
    <!-- //党委下的正常支部情况 -->
    <script type="text/javascript">
     		var monthlogin=[];
     		 var qut ="";
     		 var unqut="";
     		 var war="";
     		 var vipqut="";
			var code =window.location.search.split('&')[0].split('=')[1]
            $.ajax({
          		url: '<%=path%>/brench/orgLifeStatusList',
          		type: 'POST',
          		dataType: 'json',
          		data: {code: code},
          		success:function(data){
          			//console.log(data);
          			var op ="<%=path%>/asset/imagedw/danghui.png"
    $.each(data.data,function(i,n){
    	var urlz="<%=path%>/Party_brench?code="+n.PO_CODE;
    	if(n.DIRECTION=="qualified"){
    		
    		qut+='<li><a href="'+urlz+'" ><img src="'+op+'"><span> '+n.PO_NAME+'</span></a></li>'
    	}else if(n.DIRECTION=="unqualified"){
    		unqut+='<li><a href="'+urlz+'" ><img src="'+op+'"><span> '+n.PO_NAME+'</span></a></li>'
    	}else if(n.DIRECTION=="warning"){
    		war+='<li><a href="'+urlz+'" ><img src="'+op+'"><span> '+n.PO_NAME+'</span></a></li>'
    	}else{
    		vipqut+='<li><a href="'+urlz+'" ><img src="'+op+'"><span> '+n.PO_NAME+'</span></a></li>'
    	}
    });
    $("#v").html(vipqut);
    $("#wa").html(war);
    $("#unqut").html(unqut);
    $("#qut").html(qut);
    //console.log(data);
          		},error:function(err){
                   	console.log("error")
                }
         	})
        </script>
    
    
    
    
    <script>

      var z = $(".sunshineaffairs h3 a");
      z.each(function(){
        $(this).mouseover(function(){
          $(this).parent("h3").css("width","693px").siblings("h3").css("width","40px");
          $(this).next("ul").css({width:"623px"}).parent().siblings().find("ul").css({width:"0px"});
          $(".sunshineaffairs h3").removeClass("you");
          $(this).parent("h3").addClass("you");
        })
      })
    </script>



  </div>
  <div class="zhoner">
    <h2>党建特色展示</h2>
    <div class="bd">
      <ul>
        <%-- <li>
          <div class="pic"><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/timg.jpg" /></a></div>
          <div class="title"><a href="" target="_blank">图片标题</a></div>
        </li>
        <li>
          <div class="pic"><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/timg.jpg" /></a></div>
          <div class="title"><a href="" target="_blank">图片标题</a></div>
        </li>
        <li>
          <div class="pic"><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/timg.jpg" /></a></div>
          <div class="title"><a href="" target="_blank">图片标题</a></div>
        </li>
        <li>
          <div class="pic"><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/timg.jpg" /></a></div>
          <div class="title"><a href="" target="_blank">图片标题</a></div>
        </li>
        <li>
          <div class="pic"><a href="" target="_blank"><img src="<%=path%>/asset/imagedw/timg.jpg" /></a></div>
          <div class="title"><a href="" target="_blank">图片标题</a></div>
        </li> --%>
      </ul>
      <script type="text/javascript">
        jQuery(".zhoner").slide({mainCell:".bd ul",autoPlay:true,effect:"leftMarquee",vis:4,interTime:50});</script>
    </div>

  </div>
</div>


<script type="text/javascript">
              var code =window.location.search.split('&')[0].split('=')[1]
              $.ajax({
            		url: '<%=path%>/brench/pictureData',
            		type: 'POST',
            		dataType: 'json',
            		data: {code: code,
            			type:"pocode"
            			},
            		success:function(data){
                     console.log(data);
                  var   h="<%=path%>/asset/imagedw/timg.jpg"
                     var p="";
                  if(data.data.PICTURE.length==0){
                    	p+='<li><div class="pic photo"><img src="'+h+'" /></div><div class="title photo">图片标题</div></li>'
                    }
                  $.each(data.data.PICTURE,function(i,n){
                	  //console.log(data.data.PICTURE.length);
                	  if(data.data.PICTURE.length==0){
                      	p+='<li><div class="pic photo"><img src="'+h+'" /></div><div class="title photo">图片标题</div></li>'
                      }else{
                      	p+='<li><div class="pic photo"><img src="'+n.P_PATH+'" /></div><div class="title photo">'+n.P_NAME+'</div></li>'
                      } 
                	  
                  });
                   
                    //console.log(data.data.PICTURE.length)
                    $(".zhoner .bd ul ").html(p);
                    layer.photos({
                     	  photos: '.photo'
                     	  ,anim: 5 
                     	}); 
                    jQuery(".zhoner").slide({mainCell:".bd ul",autoPlay:true,effect:"leftMarquee",vis:4,interTime:50});
						},error:function(err){
                     	console.log("error")
                    }
             	})
              </script> 
<div class="younmk fr">
  <div class="youner">

    <a href="javascript:;" id="about">全域党建图</a>
    <div class="bd">
      <ul>
      <c:forEach var="child_info" items="${list_zz }"  begin="1">
              
						<c:choose>
						   <c:when test="${child_info.type_id== '631' || child_info.type_id== '632' || child_info.type_id== '931' || child_info.type_id== '932'}">  
						        <%-- <li><a href="<%=path%>/Party_brench?code=${child_info.code}" title="${child_info.name}">${child_info.name }</a></li>       --%>
						 
						 <li><img src="<%=path%>/asset/imagedw/danghui.png"> <a href="<%=path%>/Party_brench?code=${child_info.code}" style="display: block;padding: 0;"> <span>${child_info.name }</span></a> </li>

						 <%--  <li><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span>南外社区党支部</span></li> --%>
						   </c:when>
						   <c:otherwise> 
						   		
						   		<li><img src="<%=path%>/asset/imagedw/danghui.png"> <a href="<%=path%>/General_party_brench?code=${child_info.code}&type=${child_info.type_id}" title="${child_info.name}" style="display: block;padding: 0;"> <span>${child_info.name }</span></a> </li><%-- <li><a href="<%=path%>/General_party_brench?code=${child_info.code}&type=${child_info.type_id}" title="${child_info.name}">${child_info.name }</a></li>    --%>
						   </c:otherwise>
						</c:choose>
						
					</c:forEach>

        <%-- <li><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span>南外社区党支部</span></li>
        <li><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span>南外社区党支部</span></li>
        <li><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span>南外社区党支部</span></li>
        <li><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span>南外社区党支部</span></li>
        <li><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span>南外社区党支部</span></li>
        <li><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span>南外社区党支部</span></li>
        <li><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span>南外社区党支部</span></li>
        <li><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span>南外社区党支部</span></li>
        <li><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span>南外社区党支部</span></li>
        <li><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span>南外社区党支部</span></li>
        <li><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span>南外社区党支部</span></li>
        <li><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span>南外社区党支部</span></li>
        <li><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span>南外社区党支部</span></li>
        <li><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span>南外社区党支部</span></li>
        <li><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span>南外社区党支部</span></li>
        <li><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span>南外社区党支部</span></li>
        <li><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span>南外社区党支部</span></li>
        <li><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span>南外社区党支部</span></li>
        <li><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span>南外社区党支部</span></li>
        <li><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span>南外社区党支部</span></li>
        <li><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span>南外社区党支部</span></li>
        <li><img src="<%=path%>/asset/imagedw/jmzd.jpg"><span>南外社区党支部</span></li> --%>
      </ul>
    </div>
    

  </div>

  <div class="younsa">
    <h2>总支每月登录人数</h2>
    <span >${time}</span>
    <div id="bgtmoe" style="height: 195px;"></div>

  </div>
<script type="text/javascript">
     		var monthlogin=[];
			var code =window.location.search.split('&')[0].split('=')[1]
            $.ajax({
          		url: '<%=path%>/brench/Loginmember',
          		type: 'POST',
          		dataType: 'json',
          		data: {code: code},
          		success:function(data){
          			$.each(data.data,function(i,n){
          				
          				monthlogin[i]=n.FRACTION;
          				
          			});
          			
          		// 支部考核成绩总体趋势
          			var myChart = echarts.init(document.getElementById('bgtmoe'));
          			var option = {
          			title: {
          			text: '',

          			top:0,
          			left:16,

          			textStyle:{
          			fontWeight:'100',
          			fontSize:18,
          			color:'#1ed7ff'
          			}
          			},
          			tooltip: {
          			trigger: 'axis',
          			formatter: '{c}',
          			axisPointer : {            // 坐标轴指示器，坐标轴触发有效
          			type : 'line'        // 默认为直线，可选为：'line' | 'shadow'
          			}

          			},
          			grid:{
          			x:40,
          			y:40,
          			width:350,
          			height:125,



          			},
          			xAxis: {
          			splitLine:{
          			show:true,
          			lineStyle:{
          			color: ['#25386E', '#25386E'],
          			width: 1
          			}
          			},

          			axisLine: {
          			//onZero: false,
          			lineStyle: {
          			color: '#1ed7ff'
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
          			color: '#1ed7ff'
          			}
          			},
          			axisTick: {
          			show: false
          			},

          			data: [ 00,10,20,30,40,50],
          			type: 'value'

          			},
          			series: [{

          			data:monthlogin,
          			 lineStyle:{
          			color:'#1ed7ff'
          			},

          			areaStyle: {
          			  color: {
          			    
          			    type: 'linear',
          			    x: 0,
          			    y: 0,
          			    x2: 0,
          			    y2: 1,
          			    colorStops: [{
          			        offset: 0,color: '#0c4380'
          			    }, {
          			        offset: 1, color: '#0c4380'
          			    }],
          			             
          			  }    
          			},
          			   itemStyle:{
          			        color:'#1ed7ff',
          			    },
          			type: 'line',



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

<script src="<%=path%>/asset/cssdw/cssd/sheqy.js"></script>
<script src="<%=path%>/asset/cssdw/cssd/script.js"></script>
<script type="text/javascript" src="<%=path %>/asset/cssdw/jquery.mcustomscrollbar.concat.min.js"></script>

</div>
<div class="hr-30"></div>


<script>
var img;


  $('#about').on('click', function(){
	  
	  if($('#namedw').text()=='荷包塘社区党总支'){
			

			 img='<img src="<%=path%>/asset/imagedw/map22.jpg" width="1200px" heigth="670px">';
			 layer.open({
			      type: 1,
			      title: '全域党建图页',
			      maxmin: true,
			      area: ['1200px', '800px'],
			      content:img,
			    });
			}

    
  });
</script>


 <!-- <script>  
      (function($){
        $(window).on("load",function(){
          $(".sunshineabgwe .sunshineaffairs .affairslist").mCustomScrollbar({
            theme:"minimal"
          });
        });
      })(jQuery);
    </script> -->
    <!-- <script>  
      (function($){
        $(window).on("load",function(){
         
        });
      })(jQuery);
    </script>
     -->
    <script src="<%=path %>/asset/cssdw/layer/layer.js"></script>
             <script type="text/javascript">
          
             
             
             (function($){
                 $(window).on("load",function(){
                	 $(".youner .bd ul").mCustomScrollbar({
                         theme:"minimal"
                       });
                 });
               })(jQuery);
             </script>
    
</body>
</html>
