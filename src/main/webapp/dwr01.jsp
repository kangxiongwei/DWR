<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>DWR01</title>
	<!-- DWR会自动创建，必须引入该文件 -->
	<script type="text/javascript" src="<%=request.getContextPath() %>/dwr/engine.js"></script>
	<!-- 相当于引入了Java类HelloDwr -->
	<script type="text/javascript" src="<%=request.getContextPath() %>/dwr/interface/HelloDwr.js"></script>
	<script type="text/javascript">
		//前面是参数，最后一个函数是回调函数，直接调用Java类
		HelloDwr.say("张三",function(data){
			alert(data);
		});
	</script>
</head>
<body>

</body>
</html>