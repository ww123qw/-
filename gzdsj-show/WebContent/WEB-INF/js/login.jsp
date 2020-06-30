<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
  String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>赣州市政府网</title>
<link href="<%=path%>/search/css/so.css" rel="stylesheet" type="text/css">
<script language="javascript" src="<%=path%>jquery-1.10.2.min.js"></script>
<script src="<%=path%>/js/jqPaginator.min.js"></script>
<script language="javascript">

</script>
</head>
<body>
<form action="<%=path%>/hello/LoginGetdata" method="post">
    	<table>
    		<tr>
    			<td>用户:</td>
    			<td><input type="text" name="name"></td>
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
    
<script type="text/javascript">
$(function() {
	if(${code}==-1){
		layer.msg("登入失败!",{time: 2000,icon: 1});
	}
})
</script>
       
      

</body>
</html>