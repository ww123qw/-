<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script  src="<%=path%>/resour/jquery-1.10.2.min.js"></script>

<script type="text/javascript">
$(function() {
	if(${code}==-1){
		alert("用户名或密码错误");
	}
})
</script>

</head>
<body>
<form action="<%=path%>/hello/LoginGetdata" method="post">
    	<table>
    		<tr>
    			<td>用户:</td>
    			<td><input type="text" name="name" value="${PO_NAME}"></td>
    		</tr>
    		<tr>
    			<td>密码:</td>
    			<td><input type="password" name="password"></td>
    		</tr>
    		<tr>
    			<td></td>
    			
    			<td><input type="submit" value="Login"></td>
    		</tr>
    	</table>
    </form>
    
</body>
</html>