<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="java.net.*" %>


<%-- <c:set var="BASE" value="${pageContext.request.contextPath}"/> --%>
<%
  String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta charset="utf-8" />
		<title>login</title>
		<link rel="stylesheet" type="text/css" href="<%=path%>/asset/css/reset.css" />
		<link href="<%=path%>/asset/css/css.css" type="text/css" rel="stylesheet" />
		<link href="<%=path%>/asset/css/jquery.mCustomScrollbar.css" type="text/css" rel="stylesheet" />
		<!--  script src="<%=path%>/asset/js/jquery.js"></script-->
		<script src="<%=path%>/resour/jquery-1.10.2.min.js"></script>
		
		<script type="text/javascript" src="<%=path%>/asset/js/SuperSlide.js"></script>
		<script src="<%=path%>/asset/js/echarts.common.min.js"></script>
		
		
<%-- 		<link rel="stylesheet" type="text/css" href="<%=path%>/reset.css" /> --%>
<%-- 		<link href="<%=path%>/css.css" type="text/css" rel="stylesheet" /> --%>
<%-- 		<link href="<%=path%>/jquery.mCustomScrollbar.css" type="text/css" rel="stylesheet" /> --%>
<%-- 		<script src="<%=path%>/jquery.js"></script> --%>
		
<%-- 		<script type="text/javascript" src="<%=path%>/SuperSlide.js"></script> --%>
<%-- 		<script src="<%=path%>/echarts.common.min.js"></script> --%>
	</head>
	<body class="by" onkeydown="keyLogin();">
		<style>body{background: url(<%=path%>/asset/images/login.jpg) no-repeat top center;}</style>
		<div class="header box">
			<div class="logo fl"><img src="<%=path%>/asset/images/logo.jpg" alt=""></div>
			<span class="time fr">今天时间 : <script src="<%=path%>/asset/js/date.js"></script></span>
		</div>
		<div class="main box dols">
<%-- 		<security:guest> --%>
			<form class="dlk fr" method="post"  name="loginform">
				<div class="h3"></div>
				<div class="sz"><input type="text" name="username" value="${username}"></div>
				<div class="sz"><input type="password" name="password"></div>
				
				<input class="submit" id="sub" value="">
			</form>
<%-- 		</security:guest> --%>
		</div>
		<script src="<%=path%>/asset/js/script.js"></script>
		<div class="footer">
			建议用户使用win7以上操作系统，IE8.0以上版本浏览器，在1280*768以上分辨率使用平台
		</div>
<script>
$(".submit").on("click",function(){
	
    if(loginform.username.value==""){       //验证用户名是否为空
        alert("请输入用户名！");loginform.username.focus();return false;
    }
    if(loginform.password.value==""){       //验证密码是否为空
        alert("请输入密码！");loginform.password.focus();return false;
    }   
    var param="<%=path%>/login/LoginGetdata";  //将登录信息连接成字符串，作为发送请求的参数
   //console.log(loginform.username.value);
   //console.log(param);
    $.ajax({
        url:param,
        type:"POST",
        dataType:"json", 
        data : {
        	username:loginform.username.value,
        	password:loginform.password.value
        },
        success:function(data){
        	<%--  window.location.href="<%=path%>/view/choose2.jsp"  --%>
        	var json = JSON.parse(data.data);
        	console.log(json)
        	 if(json.code==-1){
        		 alert("账号或密码错误！");loginform.password.focus();return false;
        	 }else{
        		  if(json.data.PO_TYPE=="611"||json.data.PO_TYPE=="612"){
        			 window.location.href="<%=path%>/committee_bigdata/committee_jsp?code="+json.data.PO_CODE+"&type="+json.data.PO_TYPE
        		 }else if(json.data.PO_TYPE=="631"||json.data.PO_TYPE=="632"){
        			 window.location.href="<%=path%>/Party_brench?code="+json.data.PO_CODE
        		 }else if(json.data.PO_TYPE=="621"){
        			 window.location.href="<%=path%>/General_party_brench?code="+json.data.PO_CODE+"&type="+json.data.PO_TYPE
        		 }else if(json.data.PO_TYPE=="613"){
        			 window.location.href="<%=path%>/General_party_brench?code="+json.data.PO_CODE+"&type="+json.data.PO_TYPE
        		 }else{
        			 window.location.href="<%=path%>/view/choose2.jsp" 
        		 }
        		 
        		 }
        		 
        		 
        	
           
        },error:function(err){
        	//console.log("error")
        	alert("账号或密码错误！");loginform.password.focus();return false;
        }
    });
}); 

</script>
   <script>
  
   function keyLogin(){
    if (event.keyCode==13)  //回车键的键值为13
      document.getElementById("sub").click(); //调用登录按钮的登录事件
   }
    </script>
	</body>
</html>

<!-- <html> -->
<!-- <head> -->
<!--     <title>登录</title> -->
<!--     <meta HTTP-EQUIV="pragma" CONTENT="no-cache">  -->
<!-- </head> -->
<!-- <body> -->

<!-- <h1>登录</h1> -->

<%-- <security:guest> --%>
<%--     <form action="<%=path%>/login" method="post"> --%>
<!--         <table> -->
<!--             <tr> -->
<!--                 <td>用户名：</td> -->
<!--                 <td><input type="text" name="username"></td> -->
<!--             </tr> -->
<!--             <tr> -->
<!--                 <td>密码：</td> -->
<!--                 <td><input type="password" name="password"></td> -->
<!--             </tr> -->
<!--             <tr> -->
<!--                 <td colspan="2"> -->
<!--                     <button type="submit">登录</button> -->
<!--                 </td> -->
<!--             </tr> -->
<!--         </table> -->
<!--     </form> -->
<%-- </security:guest> --%>

<%-- <p><span style="color:red;">${errMsg}</span></p> --%>


<%-- <security:user> --%>
<%--     <c:redirect url="<%=path%>/"/> --%>
<%-- </security:user> --%>

<!-- </body> -->
<!-- </html> -->