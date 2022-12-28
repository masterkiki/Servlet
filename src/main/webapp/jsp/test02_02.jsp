<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.text.SimpleDateFormat"%>
<%@ page import = "java.util.Date" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		Date date = new Date();
		SimpleDateFormat dateformat = new SimpleDateFormat("오늘 날짜 yyyy년 M월 dd일");
		SimpleDateFormat timeformat = new SimpleDateFormat("현재 시간 hh시 mm분 ss초");
	
		String timereq = request.getParameter(value);
		String a ="aa";
		if(timereq.equals("time")){
			a = a.replace("aa",timeformat.format(date));
		} else {
			a= a.replace("aa",dateformat.format(date));
		}
	%>
	
	<%= a %>
	
	
	
	
</body>
</html>