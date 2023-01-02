<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<%@ page import ="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Calendar today = Calendar.getInstance();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일");
		
		today.add(Calendar.DATE, -1);
		
	%>
	
	<div class="container">
		<h2>오늘부터 1일</h2>
		<%	for(int i = 1; i < 11; i++){
			today.add(Calendar.DATE, 100);
			String formatString = formatter.format(today.getTime());%>
						
			<div><%= formatString %></div>
			
			<%  } %>
	</div>
	
	
	
	

</body>
</html>