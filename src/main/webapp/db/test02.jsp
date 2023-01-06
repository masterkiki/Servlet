<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.pks.servlet.common.MysqlService"%>    
<%@ page import="java.sql.ResultSet" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <scri src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  
  <link rel="stylesheet" href="/jspTemplete/test01/style.css" type="text/css">
</head>
<body>
	<% 
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "SELECT `name`,`url` FROM `bookmark` ORDER BY `id` DESC;";

		ResultSet resultSet = mysqlService.select(query);
		
	
	%>
	
	
	
	<table class="table text-center">
		<thead class="font-weight-bold">
			<tr>
				<td>사이트</td>
				<td>사이트 주소</td>
			<tr>
		</thead>
		
		<tbody>
			<% while(resultSet.next()){ %>
			<tr>
				<td><%= resultSet.getString("name") %></td>
				<td><a href="<%= resultSet.getString("url")%>"><%= resultSet.getString("url") %></a></td>
			</tr>
			<% } %>
		</tbody>
	</table>

</body>
</html>