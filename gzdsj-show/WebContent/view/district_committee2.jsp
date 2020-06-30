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
      body{overflow: hidden;background:#09236d url(${BASE}/asset/images/disimage/bodyi.jpg) no-repeat top center;}
    </style>
    <div class="top">
      <div class="dsjtit">
        <h3 class="street" style="color: #e03737;"><span>章贡区党建大数据展示中心</span> </h3>
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
              <%-- <li style="background: #071B56;"><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"><b class="bbngyi"> 水南镇党委水南镇党委水南镇党委 </b></span><span class="xinj-id"><b class="bbngyi">1</b></span><span class="xinj-con"><b class="bbngyi">98.5</b></span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"><b class="bbnger"> 水南镇党委</b> </span><span class="xinj-id"><b class="bbnger">2</b></span><span class="xinj-con"><b class="bbnger">98.5</b></span></a></li>
              <li style="background: #071B56;"><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"><b class="bbngsa"> 水南镇党委</b> </span><span class="xinj-id"><b class="bbngsa">3</b></span><span class="xinj-con"><b class="bbngsa">98.5</b></span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">4</span><span class="xinj-con">98.5</span></a></li>
              <li style="background: #071B56;"><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">5</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li style="background: #071B56;"><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>

              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li style="background: #071B56;"><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li style="background: #071B56;"><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li style="background: #071B56;"><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li style="background: #071B56;"><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li style="background: #071B56;"><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li style="background: #071B56;"><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li style="background: #071B56;"><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li style="background: #071B56;"><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li style="background: #071B56;"><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li style="background: #071B56;"><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li style="background: #071B56;"><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li style="background: #071B56;"><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li style="background: #071B56;"><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li style="background: #071B56;"><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li style="background: #071B56;"><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li style="background: #071B56;"><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li style="background: #071B56;"><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li style="background: #071B56;"><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li style="background: #071B56;"><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li style="background: #071B56;"><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">1</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">99</span><span class="xinj-con">98.5</span></a></li>
              <li style="background: #071B56;"><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">28</span><span class="xinj-con">98.5</span></a></li>
              <li><a href=""><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> 水南镇党委 </span><span class="xinj-id">55</span><span class="xinj-con">98.5</span></a></li> --%>
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
            			if(i<3){
            				
            				p+='<li ><a href="${BASE}/committee_bigdata/committee_jsp?code='+n.PO_CODE+'"><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi y'+i+'" > '+n.PO_NAME+'</span><span class="xinj-id y'+i+'" >'+pank+'</span><span class="xinj-con y'+i+'" >'+n.PO_SCORE+'</span></a></li>'
            			}else{
            				
            				p+='<li><a href="${BASE}/committee_bigdata/committee_jsp?code='+n.PO_CODE+'"><img src="${BASE}/asset/images/disimage/dfewq.png"><span class="xinj-yi"> '+n.PO_NAME+'</span><span class="xinj-id">'+pank+'</span><span class="xinj-con">'+n.PO_SCORE+'</span></a></li>'
            			}
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
              <h2 class="mfieyi">党工委数</h2>
              <h1 class="mkoddyi"></h1>
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
              <h2 class="mfieer">支部数</h2>
              <h1 class="mkodder"></h1>
              <div class="jddinw xxshuju" style="left: 0px;">

                <div class="detailed">
                  <div class="sjmky" style="height: 500px ;left: 0px;">
                    <h6>类型</h6>
                    <div class="tbk fl" id="branchChart"></div>
                    <ul class="lias fr" id="xiz">

                      <!-- <li>城市街道：0个</li>


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
              <h2 class="mfiesa">党员数</h2>
              <h1 class="mkoddsa"></h1>
              <div class="jddinw xxshuju" style="left: 0px; ">

                <div class="detailed">
                  <div class="sjmky">
                    <h6>年龄</h6>
                    <div class="tbk fl" id="nianl"></div>
                    <ul class="lias fr">
                      <li id="ages">35岁以下：</li>
                      <li id="agel" >36至60岁：</li>
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
                      <li id="educationq">其它：</li>
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
            	                            {value:data.data.educationq, name:'其它',itemStyle:{color:'#FF9F9F'}},
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
                                        {value:997, name:'其它',itemStyle:{color:'#2DC5C3'}},
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
            <img src="${BASE}/asset/images/disimage/sdefsf.png" alt="" width="501" height="629" border="0" usemap="#Map" >
            <map name="Map" id="Map">
              <area shape="poly" coords="45,172,32,155,38,153,32,140,10,118,4,112,19,90,30,78,33,63,32,49,38,40,51,45,67,37,79,35,102,34,119,29,130,20,142,26,150,25,157,32,167,37,177,35,180,29,200,32,204,25,195,12,212,6,219,12,222,29,231,-6,231,55,242,65,251,66,260,69,242,73,231,85,236,104,250,122,263,123,277,114,288,122,274,143,271,166,274,203,272,199,269,149,258,124,264,183,257,191,251,188,238,170,230,150,225,153,215,136,205,127,186,120,179,129,165,131,143,115,128,103,128,125,133,142,131,159,131,173,118,197,107,215,96,205,85,222,60,187,75,174,73,164,68,152,62,141,52,151" href="#" class="shuixi" />
              <area shape="poly" coords="258,71,242,76,233,86,241,107,247,114,252,123,265,119,280,116,289,121,297,120,302,117,306,109,312,100,318,92,310,90,309,85,299,78,275,75" href="#" class="jingkaiq" />
              <area shape="poly" coords="134,114,126,124,133,129,132,136,135,145,133,152,132,164,127,175,122,187,122,195,119,207,119,227,109,223,119,227,109,227,104,225,96,222,84,228,86,218,92,230,115,216,134,227,144,217,161,214,175,212,185,216,199,213,218,226,221,219,217,218,222,220,227,220,228,207,239,194,235,177,230,156,217,156,217,140,212,134,198,122,188,122,177,131,168,132,157,133,153,137,144,119,143,124" href="#"  class="hubian"/>
              <area shape="poly" coords="299,114,275,144,273,168,272,206,317,239,358,260,382,260,375,251,379,246,376,239,369,239,365,231,362,221,359,210,357,199,352,190,350,193,341,195,330,196,319,206,321,195,322,176,315,171,317,164,306,158,313,145,318,131,304,119" href="#" class="shuidong" />
              <area shape="poly" coords="235,195,238,232,279,237,291,223,266,192" href="#" class="jiefang"/>
              <area shape="poly" coords="63,196,56,207,52,224,56,242,75,243,75,263,86,276,97,291,104,303,122,311,137,313,144,333,151,352,168,375,178,375,174,381,175,376,180,369,183,353,191,333,222,347,197,328,212,337,198,319,190,305,181,290,168,273,167,260,157,237,156,218,141,227,136,231,125,228,107,231,95,233,80,228,72,219,75,210,73,201" href="#" class="panlong" />
              <area shape="poly" coords="180,353,187,361,185,387,203,392,207,404,186,395,194,395,198,392,211,388,211,391,215,395,210,397,215,404,214,401,214,396,217,389,231,386,239,386,248,379,240,364,233,364,218,360,199,341,193,348" href="#"  class="huangjinl"/>
              <area shape="poly" coords="217,262,224,273,252,266,274,270,273,261,265,252,264,244,253,230,234,223,221,224,217,239" href="#"  class="nanwaijiedao"/>
              <area shape="poly" coords="266,238,268,255,307,251,335,246,295,224" href="#"  class="ganjiangjiedao"/>
              <area shape="poly" coords="240,269,267,271,279,277,298,296,301,317,297,322,280,334,264,352,241,356,229,342,221,323,244,296,237,289,234,265,226,276" href="#" class="shuinan" />
              <area shape="poly" coords="274,250,276,263,277,272,297,292,312,276,329,274,332,265,342,269,352,262,316,243" href="#" class="dongwai" />

              <area shape="poly" coords="298,289,312,274,330,271,340,265,352,256,392,257,428,245,439,222,454,228,468,234,484,244,487,247,479,251,482,308,485,334,483,343,484,360,475,366,453,380,451,391,443,396,435,387,436,377,426,375,418,370,407,361,398,366,386,364,377,362,363,360,334,357,324,341,326,320,306,309" href="#" class="shahez" />
              <area shape="poly" coords="317,319,249,355,253,378,221,400,209,411,205,434,219,456,226,463,235,482,233,501,233,517,242,550,259,564,283,546,296,565,307,568,318,568,320,554,344,573,345,590,348,590,357,591,371,585,380,562,403,552,418,534,421,522,440,503,425,499,394,461,409,445,425,424,436,411,445,400,430,384,414,371,380,358,364,362,339,360,324,340" href="#" class="shashiz" />
              <area shape="poly" coords="166,219,178,217,189,218,199,223,209,224,213,231,218,267,216,283,240,294,218,324,200,304,189,288,172,275,179,269,171,256,171,247,161,237,157,218" href="#" class="huangjinl" />
              <area shape="poly" coords="71,336,118,315,143,314,143,339,140,350,152,355,157,361,163,367,165,376,172,386,182,395,198,408,211,408,202,421,198,432,213,444,221,458,228,472,234,482,225,491,226,507,228,522,240,535,248,547,256,566,254,564,246,566,239,574,232,576,226,577,213,563,198,542,193,530,195,518,176,518,161,518,147,502,140,490,141,469,127,452,114,428,112,418,113,409,108,404,107,407,89,412,90,409,87,398,93,382,102,375,115,366,122,358,112,353,93,352,81,348,78,345" href="#" />
              <area shape="poly" coords="36,435,36,446,59,448,79,444,89,446,97,457,92,474,92,488,91,502,104,508,94,525,132,549,149,559,159,590,168,610,178,620,193,618,211,606,215,589,219,567,214,546,199,521,181,505,180,495,171,492,154,493,150,483,137,477,134,460,132,434,116,423,112,412,98,408,89,401,84,400,68,409,55,408,43,415" href="#" class="tankou" />
            </map>
          </div>
          <div class="dituku shuixi" />
          <h5>水西镇<span>X</span></h5>
          <ul>
            <li><h1>支部数</h1><h2>${Party_committee.num["360702028"].zb_num}</h2></li>
            <li><h1>党员数</h1><h2>${Party_committee.num["360702028"].pm_num}</h2></li>
          </ul>
        </div>
        <div class="dituku jingkaiq" />
        <h5>章贡经济开发区<span>X</span></h5>
        <ul>
          <li><h1>支部数</h1><h2>${Party_committee.num["360702017"].zb_num}</h2></li>
          <li><h1>党员数</h1><h2>${Party_committee.num["360702017"].pm_num}</h2></li>
        </ul>

      </div>
      <div class="dituku hubian"/>
      <h5>湖边镇<span>X</span></h5>
      <ul>
        <li><h1>支部数</h1><h2>0</h2></li>
        <li><h1>党员数</h1><h2>0</h2></li>
      </ul>

    </div>
    <div class="dituku shuidong" />
    <h5>水东镇<span>X</span></h5>
    <ul>
      <li><h1>支部数</h1><h2>${Party_committee.num["360702006"].zb_num }</h2></li>
      <li><h1>党员数</h1><h2>${Party_committee.num["360702006"].pm_num }</h2></li>
    </ul>

    </div>
  <div class="dituku jiefang"/>
  <h5>解放街道<span>X</span></h5>
  <ul>
    <li><h1>支部数</h1><h2>${Party_committee.num["360702024"].zb_num }</h2></li>
    <li><h1>党员数</h1><h2>${Party_committee.num["360702024"].pm_num }</h2></li>
  </ul>

  </div>
<div class="dituku panlong" />
<h5>蟠龙镇<span>X</span></h5>
<ul>
  <li><h1>支部数</h1><h2>0</h2></li>
  <li><h1>党员数</h1><h2>0</h2></li>
</ul>

</div>
<div class="dituku huangjinl"/>
<h5>黄金岭街道<span>X</span></h5>
<ul>
  <li><h1>支部数</h1><h2>0</h2></li>
  <li><h1>党员数</h1><h2>0</h2></li>
</ul>

</div>
<div class="dituku nanwaijiedao"/>
<h5>南外街道<span>X</span></h5>
<ul>
  <li><h1>支部数</h1><h2>${Party_committee.num["360702020"].zb_num}</h2></li>
  <li><h1>党员数</h1><h2>${Party_committee.num["360702020"].pm_num}</h2></li>
</ul>

</div>
<div class="dituku ganjiangjiedao"/>
<h5>赣江街道<span>X</span></h5>
<ul>
  <li><h1>支部数</h1><h2>${Party_committee.num["360702003"].zb_num }</h2></li>
  <li><h1>党员数</h1><h2>${Party_committee.num["360702003"].pm_num }</h2></li>
</ul>

</div>
<div class="dituku shuinan" />
<h5>水南镇<span>X</span></h5>
<ul>
  <li><h1>支部数</h1><h2>${Party_committee.num["360702001"].zb_num }</h2></li>
  <li><h1>党员数</h1><h2>${Party_committee.num["360702001"].pm_num }</h2></li>
</ul>

</div>
<div class="dituku dongwai" />
<h5>东外街道<span>X</span></h5>
<ul>
  <li><h1>支部数</h1><h2>${Party_committee.num["360702015"].zb_num }</h2></li>
  <li><h1>党员数</h1><h2>${Party_committee.num["360702015"].pm_num }</h2></li>
</ul>

</div>
<div class="dituku shahez" />
<h5>沙河镇<span>X</span></h5>
<ul>
  <li><h1>支部数</h1><h2>${Party_committee.num["360702005"].zb_num  }</h2></li>
  <li><h1>党员数</h1><h2>${Party_committee.num["360702005"].pm_num  }</h2></li>
</ul>

</div>
<div class="dituku shashiz" />
<h5>沙石镇<span>X</span></h5>
<ul>
  <li><h1>支部数</h1><h2>${Party_committee.num["360702026"].zb_num  }</h2></li>
  <li><h1>党员数</h1><h2>${Party_committee.num["360702026"].pm_num  }</h2></li>
</ul>

</div>
<div class="dituku huangjinl" />
<h5>黄金岭街道<span>X</span></h5>
<ul>
  <li><h1>支部数</h1><h2>0</h2></li>
  <li><h1>党员数</h1><h2>0</h2></li>
</ul>

</div>
<div class="dituku tandong" />
<h5>潭东镇<span>X</span></h5>
<ul>
  <li><h1>支部数</h1><h2>0</h2></li>
  <li><h1>党员数</h1><h2>0</h2></li>
</ul>

</div>
<div class="dituku tankou" />
<h5>潭口镇<span>X</span></h5>
<ul>
  <li><h1>支部数</h1><h2>0</h2></li>
  <li><h1>党员数</h1><h2>0</h2></li>
</ul>

</div>
</div>
</div>
<div class="yougnmk fl">
  <div class="lifemyi">
    <h2>党组织生活正常情况</h2>
    <div class="lifemyie-gg">
      <div class="xinjtitle">
        <span class="xinj-yi">党委名称 </span>
        <span class="xinj-id">正常</span>
        <span class="xinj-con">预警</span>
        <span class="xinj-bon">非正常</span>
        <span class="xinj-gne">其它</span>
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
    <script>  
      (function($){
        $(window).on("load",function(){
          $(".lifemyi .lifemyie-gg ul").mCustomScrollbar({
            theme:"minimal"
          });
        });
      })(jQuery);
    </script>

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
  <div class="youner">
    <h2>全区考核总体情况</h2>
    <span></span>
    <div id="fetmoe" style="height: 220px;"></div>
  </div>
  <div class="younsi">
    <h2>全区考核成绩总体趋势</h2>
    <span>${mont}月份</span>
    <div id="fefetmoe" style="height: 180px;"></div>
  </div>

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
<div class="hr-30"></div>
</div>

</body>
</html>




