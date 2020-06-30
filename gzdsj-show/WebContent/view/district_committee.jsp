<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:set var="BASE" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta charset="utf-8" />
    <title></title>
    <link rel="stylesheet" type="text/css" href="${BASE}/asset/css/discss/reset.css" />
    <link href="${BASE}/asset/css/discss/css.css" type="text/css" rel="stylesheet" />
    <link href="${BASE}/asset/css/discss/jquery.mcustomscrollbar.css" type="text/css" rel="stylesheet" />

    <script src="${BASE}/asset/css/discss/jquery.js"></script>
    <script type="text/javascript" src="${BASE}/asset/css/discss/superslide.js"></script>
    <script src="${BASE}/asset/css/discss/echarts.common.min.js"></script>
  </head>
  <body>
    <style>
      body{overflow-x: hidden;background: url(${BASE}/asset/images/disimage/bodyi.jpg) no-repeat top center;}
    </style>
    <div class="top">
      <div class="dsjtit">
        <h3 class="street"><span>章贡区党建大数据展示中心</span> </h3>
        <div class="stzyjf"><a href="javascript:history.go(-1)">返回</a></div>
      </div>
    </div>
    <div class="main mxs">
      <div class="bvenmk fl">
        <div class="zuogsa">
          <h2>基层党组织</h2>
        <div class="content xinjtitle-gg ">

            <div class="xinjtitle">
              <span class="xinj-yi">党委名称 </span>
              <span class="xinj-id">排名</span>
              <span class="xinj-con">分数</span>
            </div>
            <ul>  
              <%-- <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li> --%>
            </ul>
          </div>
           <script type="text/javascript">
              var code =window.location.search.split('&')[0].split('=')[1]
              $.ajax({
            		url: '${BASE}/distuict/panks',
            		type: 'POST',
            		dataType: 'json',
            		data: {code: code},
            		success:function(data){
            		//var getdata=$.parseJSON(data);
            		var p="";
            		console.log(data.data.length)
            		$.each(data.data,function(i,n){
            			var pank=i+1
            			
            			p+='<li><a href="${BASE}/committee_bigdata/committee_jsp?code='+n.PO_CODE+'"><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> '+n.PO_NAME+' </span><span class="xinj-id">'+pank+'</span><span class="xinj-con">'+n.PO_SCORE+'</span></a></li>'
            		});
            		$(".xinjtitle-gg ul").html(p);
            		
            		//console.log(data);
            		},error:function(err){
                     	console.log("error")
                    }
             	})
              </script> 
          
          
          
          
             <script>

    (function($){

      $(window).load(function(){

        

        $(".content").mCustomScrollbar({

          scrollButtons:{

            enable:true

          },

          callbacks:{

            onScrollStart:function(){ myCallback(this,"#onScrollStart") },

            onScroll:function(){ myCallback(this,"#onScroll") },

            onTotalScroll:function(){ myCallback(this,"#onTotalScroll") },

            onTotalScrollOffset:60,

            onTotalScrollBack:function(){ myCallback(this,"#onTotalScrollBack") },

            onTotalScrollBackOffset:50,

            whileScrolling:function(){ 

              myCallback(this,"#whileScrolling"); 

              $("#mcs-top").text(this.mcs.top);

              $("#mcs-dragger-top").text(this.mcs.draggerTop);

              $("#mcs-top-pct").text(this.mcs.topPct+"%");

              $("#mcs-direction").text(this.mcs.direction);

              $("#mcs-total-scroll-offset").text("60");

              $("#mcs-total-scroll-back-offset").text("50");

            },

            alwaysTriggerOffsets:false

          }

        });

        

        function myCallback(el,id){

          if($(id).css("opacity")<1){return;}

          var span=$(id).find("span");

          clearTimeout(timeout);

          span.addClass("on");

          var timeout=setTimeout(function(){span.removeClass("on")},350);

        }

        

        $(".callbacks a").click(function(e){

          e.preventDefault();

          $(this).parent().toggleClass("off");

          if($(e.target).parent().attr("id")==="alwaysTriggerOffsets"){

            var opts=$(".content").data("mCS").opt;

            if(opts.callbacks.alwaysTriggerOffsets){

              opts.callbacks.alwaysTriggerOffsets=false;

            }else{

              opts.callbacks.alwaysTriggerOffsets=true;

            }

          }

        });

        

      });

    })(jQuery);

  </script>
          
          
    
        </div>

      </div>

      <div class="zhongnmk fl">
        <div class="branches xddinw dsdzsyshu">
          <ul>
            <li>
              <h2>党工委数</h2>
              <h1></h1>
              <div class="jddinw xxshuju" style="left: 0px;">

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
                </div>
              </div>
            </li>
            <li>
              <h2>支部数</h2>
              <h1></h1>
              <div class="jddinw xxshuju" style="left: 0px;">

                <div class="detailed">
                  <div class="sjmky" style="height: 500px ;left: 0px;">
                    <h6>类型</h6>
                    <div class="tbk fl" id="branchChart"></div>
                    <ul class="lias fr" id="xiz">

                    <!--   <li>城市街道：0个</li>


                      <li>其他：979个</li>


                      <li>乡镇：0个</li>


                      <li>社会组织：0个</li>


                      <li>农村社区（居委会）：0个</li>


                      <li>集体经济控制：0个</li>


                      <li>机关：0个</li>


                      <li>城市社区（居委会）：19个</li>


                      <li>国有经济控制：0个</li>


                      <li>非公有经济控制：0个</li>


                      <li>事业单位：0个</li>


                      <li>建制村：12个</li> -->


                      <!-- <li>其他：972个</li>
<li>城市社区：14个</li>
<li>建制村：4个</li> -->
                    </ul>
                  </div>
                </div>
              </div>


            </li>
            <li>
              <h2>党员数</h2>
              <h1></h1>
              <div class="jddinw xxshuju" style="left: 0px; ">

                <div class="detailed">
                  <div class="sjmky">
                    <h6>年龄</h6>
                    <div class="tbk fl" id="nianl"></div>
                    <ul class="lias fr">
                      <li id="ages">35岁以下：</li>
                      <li id="agel">36至60岁：</li>
                      <li id="agec">61岁以上：</li>
                    </ul>
                  </div>
                  <div class="sjmky">
                    <h6>学历</h6>
                    <div class="tbk fl" id="xuel"></div>
                    <ul class="lias fr">
                      <li id="educationc">初中及以下：</li>
                      <li id="educationg">中专、高中、中技：</li>
                      <li id="educationd">大专及以上：</li>
                      <li id="educationq">其他：</li>
                    </ul>
                  </div>
                  <div class="sjmky">
                    <h6>职业</h6>
                    <div class="tbk fl" id="zhiy"></div>
                    <ul class="lias fr">
                      <li id="wgsum">公职人员：</li>
                      <li id="wnmsum">农牧渔民：</li>
                      <li id="wtlsum">离退休：</li>
                      <li id="wfgsum">非公组织：</li>
                      <li id="wqsum">其它职业：</li>
                    </ul>
                  </div>
                  <div class="sjmky">
                    <h6>性别</h6>
                    <div class="tbk fl" id="xinb"></div>
                    <ul class="lias fr">
                      <li id="man">男党员：</li>
                      <li id="woman">女党员：</li>
                    </ul>
                  </div>
                  <div class="sjmky">
                    <h6>民族</h6>
                    <div class="tbk fl" id="minz"></div>
                    <ul class="lias fr">
                      <li id="ethnics">少数民族：</li>
                      <li id="ethnich">汉族：</li>
                    </ul>
                  </div>

                </div>
              </div>
            </li>
          </ul>
        </div>
       
         <script type="text/javascript">
        var ages;
        var agel;
        var agec;
              var code =window.location.search.split('&')[0].split('=')[1]
              $.ajax({
            		url: '${BASE}/distuict/getPieChart',
            		type: 'POST',
            		dataType: 'json',
            		data: {code: code},
            		success:function(data){
            		//console.log(data);
            		ages=data.data.ages;
            		agel=data.data.agel;
            		agec=data.data.agec;
            		$("#ages").append(ages+"名");
            		$("#agel").append(agel+"名");
            		$("#agec").append(agec+"名");
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
            	                                        color: '#1ed7ff',
            	                                        //backgroundColor: '#334455',
            	                                        padding: [2, 4],
            	                                        borderRadius: 2
            	                                    }
            	                                }
            	                            }
            	                        },
            	                        data:[
            	                            {value:data.data.ages, name:'35岁以下',itemStyle:{color:'#2DC5C3'}},
            	                            {value:data.data.agel, name:'36至60岁',itemStyle:{color:'#FFA60A'}}, 
            	                            {value:data.data.agec, name:'61岁以上',itemStyle:{color:'#006CFF'}},

            	                        ]
            	                    }
            	                ]
            	            };
            	        
            	        myChart.setOption(option);
            		},error:function(err){
                     	console.log("error")
                    }
             	})
              </script> 
       
         <script type="text/javascript">
              var code =window.location.search.split('&')[0].split('=')[1]
              $.ajax({
            		url: '${BASE}/distuict/getPieChart_career',
            		type: 'POST',
            		dataType: 'json',
            		data: {code: code},
            		success:function(data){
            		//console.log(data);
                      $("#wgsum").append(data.data.careerdatag);
                      $("#wnmsum").append(data.data.careerdatan);
                      $("#wtlsum").append(data.data.careerdatal);
                      $("#wfgsum").append(data.data.careerdataf);
                      $("#wqsum").append(data.data.careerdataq);
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
            	                                         color: '#1ed7ff',
            	                                        //backgroundColor: '#334455',
            	                                        padding: [2, 4],
            	                                        borderRadius: 2
            	                                    }
            	                                }
            	                            }
            	                        },
            	                        data:[
            	                            {value:data.data.careerdatag, name:'公职人员',itemStyle:{color:'#2DC5C3'}},
            	                            {value:data.data.careerdatan, name:'农牧渔民',itemStyle:{color:'#FFA60A'}}, 
            	                            {value:data.data.careerdatal, name:'离退休',itemStyle:{color:'#006CFF'}},
            	                            {value:data.data.careerdataf, name:'非公组织',itemStyle:{color:'#FF9F9F'}},
            	                            {value:data.data.careerdataq, name:'其它职业',itemStyle:{color:'#fff'}},

            	                        ]
            	                    }
            	                ]
            	            };

            	        myChart.setOption(option);
            		},error:function(err){
                     	console.log("error")
                    }
             	})
              </script> 
            
               <script type="text/javascript">
              var code =window.location.search.split('&')[0].split('=')[1]
              $.ajax({
            		url: '${BASE}/distuict/getPieChart_education',
            		type: 'POST',
            		dataType: 'json',
            		data: {code: code},
            		success:function(data){
            		//console.log(data);
            		$("#educationc").append(data.data.educationc);
            		$("#educationg").append(data.data.educationz);
            		$("#educationd").append(data.data.educationd);
            		$("#educationq").append(data.data.educationq);
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
            	                                         color: '#1ed7ff',
            	                                        //backgroundColor: '#334455',
            	                                        padding: [2, 4],
            	                                        borderRadius: 2
            	                                    }
            	                                }
            	                            }
            	                        },
            	                        data:[
            	                            {value:data.data.educationc, name:'初中及以下' ,itemStyle:{color:'#2DC5C3'}},
            	                            {value:data.data.educationz, name:'中专、高中、中技',itemStyle:{color:'#FFA60A'}}, 
            	                            {value:data.data.educationd, name:'大专及以上',itemStyle:{color:'#006CFF'}},
            	                            {value:data.data.educationq, name:'其他',itemStyle:{color:'#FF9F9F'}},
            	                        ]
            	                    }
            	                ]
            	            };

            	        myChart.setOption(option);
            		},error:function(err){
                     	console.log("error")
                    }
             	})
              </script> 
              
               <script type="text/javascript">
              var code =window.location.search.split('&')[0].split('=')[1]
              $.ajax({
            		url: '${BASE}/distuict/getPieChart_sex',
            		type: 'POST',
            		dataType: 'json',
            		data: {code: code},
            		success:function(data){
            		//console.log(data);
            		$("#woman").append(data.data.Woman);
            		$("#man").append(data.data.Man);
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
            		                                         color: '#1ed7ff',
            		                                        //backgroundColor: '#334455',
            		                                        padding: [2, 4],
            		                                        borderRadius: 2
            		                                    }
            		                                }
            		                            }
            		                        },
            		                        data:[
            		                            {value:data.data.Woman, name:'男党员',itemStyle:{color:'#2DC5C3'}},
            		                            {value:data.data.Man, name:'女党员',itemStyle:{color:'#FFA60A'}}, 


            		                        ]
            		                    }
            		                ]
            		            };

            		        myChart.setOption(option);
            		},error:function(err){
                     	console.log("error")
                    }
             	})
              </script> 
             
               <script type="text/javascript">
              var code =window.location.search.split('&')[0].split('=')[1]
              $.ajax({
            		url: '${BASE}/distuict/getPieChart_ethnic',
            		type: 'POST',
            		dataType: 'json',
            		data: {code: code},
            		success:function(data){
            		//console.log(data);
            		$("#ethnics").append(data.data.ethnics);
            		$("#ethnich").append(data.data.ethnich);
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
            		                                         color: '#1ed7ff',
            		                                        //backgroundColor: '#334455',
            		                                        padding: [2, 4],
            		                                        borderRadius: 2
            		                                    }
            		                                }
            		                            }
            		                        },
            		                        data:[
            		                            {value:data.data.ethnics, name:'少数民族',itemStyle:{color:'#2DC5C3'}},
            		                            {value:data.data.ethnich, name:'汉族',itemStyle:{color:'#FFA60A'}}, 


            		                        ]
            		                    }
            		                ]
            		            };

            		        myChart.setOption(option);
            		     
            		},error:function(err){
                     	console.log("error")
                    }
             	})
              </script> 
        
          <script type="text/javascript">
              var code =window.location.search.split('&')[0].split('=')[1]
              $.ajax({
            		url: '${BASE}/distuict/getStData',
            		type: 'POST',
            		dataType: 'json',
            		data: {code: code},
            		success:function(data){
            			$(".branches ul li h1")[0].append(data.data.PO_SENIOR_NUMBER);
            			$(".branches ul li h1")[1].append(data.data.PO_BRANCH_NUMBER);
            			$(".branches ul li h1")[2].append(data.data.PM_NUMBER);
            		//console.log(data);
            		},error:function(err){
                     	console.log("error")
                    }
             	})
              </script> 
        
        
         <script type="text/javascript">
              var code =window.location.search.split('&')[0].split('=')[1]
              $.ajax({
            		url: '${BASE}/distuict/getPoStatistics',
            		type: 'POST',
            		dataType: 'json',
            		data: {code: code},
            		success:function(data){
            		//console.log(data);
            		var p="";
            			$.each(data.data,function(i,n){
            				p+='<li>'+n.PO_PROPERTY+'：'+n.PO_NUMBER+'个</li>'
            			});
            		console.log(data);
            			$("#xiz").html(p);
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
                                                     color: '#1ed7ff',
                                                    //backgroundColor: '#334455',
                                                    padding: [2, 4],
                                                    borderRadius: 2
                                                }
                                            }
                                        }
                                    },
                                    data:[
                                        {value:997, name:'其他',itemStyle:{color:'#2DC5C3'}},
                                        {value:14, name:'城市社区',itemStyle:{color:'#FFA60A'}}, 
                                        {value:4, name:'建制村',itemStyle:{color:'#006CFF'}},
                                    ]
                                }
                            ]
                        };

                    myChart.setOption(option);
            		},error:function(err){
                     	console.log("error")
                    }
             	})
              </script> 
        
            
         <script type="text/javascript">
              var code =window.location.search.split('&')[0].split('=')[1]
              $.ajax({
            		url: '${BASE}/distuict/getPieChart_career',
            		type: 'POST',
            		dataType: 'json',
            		data: {code: code},
            		success:function(data){
            		//console.log(data);
            		
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
                                                     color: '#1ed7ff',
                                                    //backgroundColor: '#334455',
                                                    padding: [2, 4],
                                                    borderRadius: 2
                                                }
                                            }
                                        }
                                    },
                                    data:[
                                        {value:9, name:'镇（街道）',itemStyle:{color:'#2DC5C3'}},
                                        {value:13, name:'区直机关',itemStyle:{color:'#FFA60A'}}, 
                                        {value:3, name:'卫生教育',itemStyle:{color:'#006CFF'}},
                                        {value:1, name:'国有企业',itemStyle:{color:'#FF9F9F'}},
                                        {value:3, name:'两新组织',itemStyle:{color:'#fff'}},

                                    ]
                                }
                            ]
                        };
                    
                    myChart.setOption(option);
            		},error:function(err){
                     	console.log("error")
                    }
             	})
              </script> 
        
        <div class="brasdncers">
          <h2>地图展示</h2>
          <div class="dangzbmap xddinw">
            <div class="hr-25"></div>
            <img src="${BASE}/asset/images/disimage/sdefsf.png" alt="" width="565" height="713" border="0" usemap="#Map" >
            <map name="Map" id="Map">
              <area shape="poly" coords="52,192,39,175,45,173,39,160,17,138,11,132,26,110,37,98,40,83,39,69,45,60,58,65,74,57,86,55,108,48,126,49,137,40,152,37,161,35,165,34,172,40,179,46,187,49,202,46,211,45,221,50,228,47,226,32,227,22,238,14,241,23,253,43,257,61,267,83,279,85,259,108,280,143,288,149,306,139,327,146,309,170,308,233,302,249,272,266,266,249,273,230,282,216,276,200,264,174,251,175,239,149,230,135,216,138,190,150,171,136,148,117,141,123,137,138,144,147,151,166,146,190,149,197,135,227,129,233,120,240,107,237,98,240,76,228,85,210,82,194,80,184,75,172,69,161,59,171" href="#" class="shuixi" />
              <area shape="poly" coords="284,84,275,93,266,103,274,124,280,131,285,140,298,136,313,133,322,138,330,137,335,134,339,126,345,117,351,109,351,97,343,92,330,88,308,84" href="#" class="jingkaiq" />
              <area shape="poly" coords="150,120,142,130,149,135,148,142,158,157,159,167,154,176,155,191,149,208,143,212,144,223,135,233,131,242,127,248,120,247,115,244,109,238,107,243,88,254,109,260,139,256,153,257,166,244,178,244,191,241,203,244,230,247,260,257,263,260,261,253,261,241,268,228,275,211,271,200,264,183,241,169,241,152,233,146,228,140,215,143,207,147,194,153,184,152,173,148,169,143,160,125,159,130" href="#"  class="hubian"/>
              <area shape="poly" coords="338,132,314,162,312,186,311,224,339,259,395,291,431,294,424,281,426,274,427,267,418,267,411,256,410,240,402,222,403,213,390,217,384,222,375,224,367,227,362,226,360,213,361,194,354,189,356,182,345,176,352,163,357,149,343,137" href="#" class="shuidong" />
              <area shape="poly" coords="312,233,297,258,307,267,331,260,321,244" href="#" class="jiefang"/>
              <area shape="poly" coords="74,230,67,241,63,258,67,276,86,277,86,297,97,310,108,325,115,337,133,345,148,347,164,360,162,386,179,409,192,422,197,430,204,438,209,427,207,406,214,383,233,381,243,395,265,402,219,333,207,327,193,306,196,297,189,282,177,256,167,252,161,262,147,265,136,262,118,265,106,267,91,262,83,253,86,244,84,235" href="#" class="panlong" />
              <area shape="poly" coords="176,248,183,256,184,270,199,287,203,299,194,307,205,322,220,325,228,339,233,348,244,362,252,364,262,352,268,341,279,321,255,328,246,316,251,310,257,295,260,276,253,269,240,251,216,251,189,243" href="#"  class="huangjinl"/>
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
          </div>
          <div class="dituku shuixi" />
          <h5>水西镇<span>X</span></h5>

          <div class="xinq">
            <div class="zhibus">支部数:<span>${Party_committee.num["360702028"].zb_num}</span>个</div>
            <div class="dyuans">党员数:<span>${Party_committee.num["360702028"].pm_num } </span>人</div>
          </div>
        </div>
        <div class="dituku jingkaiq" />
        <h5>章贡经济开发区<span>X</span></h5>

        <div class="xinq">
          <div class="zhibus">支部数:<span>${Party_committee.num["360702017"].zb_num}</span>个</div>
          <div class="dyuans">党员数:<span>${Party_committee.num["360702017"].pm_num}</span>人</div>
        </div>
      </div>
      <div class="dituku hubian"/>
      <h5>湖边镇<span>X</span></h5>

      <div class="xinq">
        <div class="zhibus">支部数:<span>0</span>个</div>
        <div class="dyuans">党员数:<span>0</span>人</div>
      </div>
    </div>
    <div class="dituku shuidong" />
    <h5>水东镇<span>X</span></h5>

    <div class="xinq">
      <div class="zhibus">支部数:<span>${Party_committee.num["360702006"].zb_num }</span>个</div>
      <div class="dyuans">党员数:<span>${Party_committee.num["360702006"].pm_num }</span>人</div>
    </div>
    </div>
  <div class="dituku jiefang"/>
  <h5>解放街道<span>X</span></h5>

  <div class="xinq">
    <div class="zhibus">支部数:<span>${Party_committee.num["360702024"].zb_num }</span>个</div>
    <div class="dyuans">党员数:<span>${Party_committee.num["360702024"].pm_num }</span>人</div>
  </div>
  </div>
<div class="dituku panlong" />
<h5>蟠龙镇<span>X</span></h5>

<div class="xinq">
  <div class="zhibus">支部数:<span>0</span>个</div>
  <div class="dyuans">党员数:<span>0</span>人</div>
</div>
</div>
<div class="dituku huangjinl"/>
<h5>黄金岭街道<span>X</span></h5>

<div class="xinq">
  <div class="zhibus">支部数:<span>0</span>个</div>
  <div class="dyuans">党员数:<span>0</span>人</div>
</div>
</div>
<div class="dituku nanwaijiedao"/>
<h5>南外街道<span>X</span></h5>

<div class="xinq">
  <div class="zhibus">支部数:<span>${Party_committee.num["360702020"].zb_num}</span>个</div>
  <div class="dyuans">党员数:<span>${Party_committee.num["360702020"].pm_num}</span>人</div>
</div>
</div>
<div class="dituku ganjiangjiedao"/>
<h5>赣江街道<span>X</span></h5>

<div class="xinq">
  <div class="zhibus">支部数:<span>${Party_committee.num["360702003"].zb_num }</span>个</div>
  <div class="dyuans">党员数:<span>${Party_committee.num["360702003"].pm_num }</span>人</div>
</div>
</div>
<div class="dituku shuinan" />
<h5>水南镇<span>X</span></h5>

<div class="xinq">
  <div class="zhibus">支部数:<span>${Party_committee.num["360702001"].zb_num }</span>个</div>
  <div class="dyuans">党员数:<span>${Party_committee.num["360702001"].pm_num }</span>人</div>
</div>
</div>
<div class="dituku dongwai" />
<h5>东外街道<span>X</span></h5>

<div class="xinq">
  <div class="zhibus">支部数:<span>${Party_committee.num["360702015"].zb_num }</span>个</div>
  <div class="dyuans">党员数:<span>${Party_committee.num["360702015"].pm_num }</span>人</div>
</div>
</div>
<div class="dituku shahez" />
<h5>沙河镇<span>X</span></h5>

<div class="xinq">
  <div class="zhibus">支部数:<span>${Party_committee.num["360702005"].zb_num  }</span>个</div>
  <div class="dyuans">党员数:<span>${Party_committee.num["360702005"].pm_num  }</span>人</div>
</div>
</div>
<div class="dituku shashiz" />
<h5>沙石镇<span>X</span></h5>

<div class="xinq">
  <div class="zhibus">支部数:<span>${Party_committee.num["360702026"].zb_num  }</span>个</div>
  <div class="dyuans">党员数:<span>${Party_committee.num["360702026"].pm_num  }</span>人</div>
</div>
</div>
<div class="dituku huangjinl" />
<h5>黄金岭街道<span>X</span></h5>

<div class="xinq">
  <div class="zhibus">支部数:<span>0</span>个</div>
  <div class="dyuans">党员数:<span>0</span>人</div>
</div>
</div>
<div class="dituku tandong" />
<h5>潭东镇<span>X</span></h5>

<div class="xinq">
  <div class="zhibus">支部数:<span>0</span>个</div>
  <div class="dyuans">党员数:<span>0</span>人</div>
</div>
</div>
<div class="dituku tankou" />
<h5>潭口镇<span>X</span></h5>

<div class="xinq">
  <div class="zhibus">支部数:<span>0</span>个</div>
  <div class="dyuans">党员数:<span>0</span>人</div>
</div>
</div>
</div>
</div>
<div class="yougnmk fr">
  <div class="lifemyi">
    <h2>党组织生活正常情况</h2>
    <div class="lifemyie-gg">
      <div class="xinjtitle">
        <span class="xinj-yi">党委名称 </span>
        <span class="xinj-id">正常</span>
        <span class="xinj-con">预警</span>
        <span class="xinj-bon">非正常</span>
        <span class="xinj-gne">其他</span>
      </div>
      <ul>  
        <%-- <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">5</span><span class="xinj-bon">5</span><span class="xinj-gne">5</span></a></li>
        <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">5</span><span class="xinj-bon">5</span><span class="xinj-gne">5</span></a></li>
        <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">5</span><span class="xinj-bon">5</span><span class="xinj-gne">5</span></a></li>
        <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">5</span><span class="xinj-bon">5</span><span class="xinj-gne">5</span></a></li>
        <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">5</span><span class="xinj-bon">5</span><span class="xinj-gne">5</span></a></li>
        <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">5</span><span class="xinj-bon">5</span><span class="xinj-gne">5</span></a></li>
        <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">5</span><span class="xinj-bon">5</span><span class="xinj-gne">5</span></a></li>
        <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">5</span><span class="xinj-bon">5</span><span class="xinj-gne">5</span></a></li>
        <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">5</span><span class="xinj-bon">5</span><span class="xinj-gne">5</span></a></li>
        <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">5</span><span class="xinj-bon">5</span><span class="xinj-gne">5</span></a></li> --%>
      </ul>
    </div>
    
      <script type="text/javascript">
              var code =window.location.search.split('&')[0].split('=')[1]
              $.ajax({
            		url: '${BASE}/distuict/getPmOvera',
            		type: 'POST',
            		dataType: 'json',
            		data: {code: code},
            		success:function(data){
					var p="";
					$.each(data.data,function(i,n){
						
						p+='<li><a href="${BASE}/committee_bigdata/committee_jsp?code='+n.PO_CODE+'"><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> '+n.PO_NAME+' </span><span class="xinj-id">'+n.QUALIFIED+'</span><span class="xinj-con">'+n.WARNING+'</span><span class="xinj-bon">'+n.UNQUALIFIED+'</span><span class="xinj-gne">'+n.PO_VPLIFIED+'</span></a></li>'
						
						
					});
            			$(".lifemyie-gg ul").html(p);
            			 $(".lifemyi .lifemyie-gg ul").mCustomScrollbar({
            		            theme:"minimal"
            		          });
            			//console.log(data);
            		},error:function(err){
                     	console.log("error")
                    }
             	})
              </script>
    
    
    
    
    
    
    
    
   

  </div>  
  <div class="youner">
    <h2>全区考核总体情况</h2>
    <span></span>
    <div id="fetmoe" style="height: 220px;"></div>
  </div>
  
   <script type="text/javascript">
              var code =window.location.search.split('&')[0].split('=')[1]
              $.ajax({
            		url: '${BASE}/distuict/getPoOvera',
            		type: 'POST',
            		dataType: 'json',
            		data: {code: code},
            		success:function(data){
            			//console.log(data);
            			$(".youner span").append(data.data.TOTAL);
            			var myChart = echarts.init(document.getElementById('fetmoe'));
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
            			bottom: 70,
            			textStyle:{
            			color:'#1ed7ff'
            			},
            			data: ["参与组织生活","凝聚力","战斗力",]
            			},
            			series: [{
            			name: '考核情况',
            			type: 'pie',
            			radius : ['40%', '60%'],
            			center:['30%','50%'],
            			data: [
            			{value:data.data.FRACTION_ZZSH,name:'参与组织生活' ,itemStyle:{color:'#2DC5C3'}},
            			{value:data.data.FRACTION_NJL,name:'凝聚力',itemStyle:{color:'#FFA60A'}}, 
            			{value:data.data.FRACTION_ZDL,name:'战斗力',itemStyle:{color:'#006CFF'}},
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
  
  
  <div class="younsi">
    <h2>全区考核成绩总体趋势</h2>
    <span>5月份</span>
    <div id="fefetmoe" style="height: 180px;"></div>
  </div>

</div>
 <script type="text/javascript">
 var monthqu=[];
              var code =window.location.search.split('&')[0].split('=')[1]
              $.ajax({
            		url: '${BASE}/distuict/getOverallTestTrend',
            		type: 'POST',
            		dataType: 'json',
            		data: {code: code},
            		success:function(data){
            			$.each(data.data,function(i,n){
            				
            				monthqu[i]=n.FRACTION;
            			});
            		//	console.log(data);
            			var myChart = echarts.init(document.getElementById('fefetmoe'));
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

            			data:monthqu,

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
            			     offset: 0,color: 'rgba(20,200,212,0.5)'
            			    }, {    
            			        offset: 1, color: 'rgba(20,200,212,0)'
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
  


<script src="${BASE}/asset/css/discss/sheqy.js"></script>
<script src="${BASE}/asset/css/discss/script.js"></script>
<script type="text/javascript" src="${BASE}/asset/css/discss/jquery.mcustomscrollbar.concat.min.js"></script>
<div class="hr-35"></div>
</div>
 <!-- <script>  
      (function($){
        $(window).on("load",function(){
          $(".lifemyi .lifemyie-gg ul").mCustomScrollbar({
            theme:"minimal"
          });
        });
      })(jQuery);
    </script> -->
</body>
</html>



