<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <scri src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  
  <link rel="stylesheet" href="/jspTemplete/test02/style.css" type="text/css">
</head>
<body>
	
	<%@  include file="data.jsp"%>
	<div class="container">
		
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp" />
		
		
		<section class="content">
			<div class="artist-info">
				<div class="main-info border border-success d-flex">
					<div class="img m-2">
						<img alt="아이유-사진" width="200px" src="<%= artistInfo.get("photo") %>">
					</div>
					<div class="singer-info mt-2">
						<h4><%= artistInfo.get("name") %></h4>
						<h6><%= artistInfo.get("agency") %></h6>
						<h6><%= artistInfo.get("debute") %> 데뷔</h6>
					</div>
				</div>
			</div>
		
			<div class="music-list mt-3">
				<h5>곡 목록</h5>
				<table class="table text-center" style="font-size:12px">
					<thead>
						<tr class="font-weight-bold">
							<td>no</td>
							<td>제목</td>
							<td>앨범</td>
						</tr>
					</thead>
					
					<tbody>
					<%for(Map<String, Object> songInfo : musicList) {%>
						<tr>
							<td><%= songInfo.get("id") %></td>
							<td><a href="/jspTemplete/test02/test02_detail.jsp?id=<%= songInfo.get("id")%>"><%= songInfo.get("title") %></a></td>
							<td><%= songInfo.get("album") %></td>
						</tr>
					<%} %>
					</tbody>
				</table>
			</div>
			
		
		</section>
		<hr>
		
		<jsp:include page="footer.jsp" />
		
	</div>


</body>
</html>