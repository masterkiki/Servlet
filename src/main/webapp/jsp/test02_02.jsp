<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.text.SimpleDateFormat"%>
<%@ page import = "java.util.Date" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>test02</title>
</head>
<body>
	
	<%
		// 날짜가 보고 싶으념 what = date
		// 시간이 보고 싶으면 what = time
		String what = request.getParameter("what");
		
		Date now = new Date();
		SimpleDateFormat dateformat = new SimpleDateFormat("오늘 날짜 yyyy년 M월 d일");
		SimpleDateFormat timeformat = new SimpleDateFormat("현재 시간 hh시 mm분 ss초");
	
		
		String formatString = null;
		if(what.equals("date")){
			formatString = dateformat.format(now);	
		} else {
			formatString = timeformat.format(now);	
		}
		
	%>
	
	<div class="container">
		<div class="display-2"><%= formatString %></div>
	</div>
		
</body>
</html>