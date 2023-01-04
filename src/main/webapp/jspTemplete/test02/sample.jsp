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
<%
// 아티스트 정보 

    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");


// 아이유 노래 리스트 
    List<Map<String, Object>> musicList = new ArrayList<>();

    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1);
    musicInfo.put("title", "팔레트");
    musicInfo.put("album", "Palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 2);
    musicInfo.put("title", "좋은날");
    musicInfo.put("album", "Real");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
    musicInfo.put("time", 233);
    musicInfo.put("composer", "이민수");
    musicInfo.put("lyricist", "김이나");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 3);
    musicInfo.put("title", "밤편지");
    musicInfo.put("album", "palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 253);
    musicInfo.put("composer", "제휘,김희원");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 4);
    musicInfo.put("title", "삐삐");
    musicInfo.put("album", "삐삐");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "이종훈");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 5);
    musicInfo.put("title", "스물셋");
    musicInfo.put("album", "CHAT-SHIRE");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 6);
    musicInfo.put("title", "Blueming");
    musicInfo.put("album", "Love poem");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);
    
   String title = request.getParameter("title");
%>
	
	<div class="container">
		
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp" />
		
		
		<section class="content">
			<div class="artist-info">
				<div class="main-info border border-success d-flex">
					<div class="img m-2">
						<img alt="아이유-사진" width="150px" src="<%= artistInfo.get("photo") %>">
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
							<td><a href="#"><%= songInfo.get("title") %></a></td>
							<td><%= songInfo.get("album") %></td>
						</tr>
					<%} %>
					</tbody>
				</table>
			</div>
			
			

			<div class="song-info">
				<div class="main-info border border-success d-flex">
					<div class="img m-2">
						<img alt="앨범사진" width="150px" src="https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG">
					</div>
					<div class="singer-info mt-2">
						<h3>삐삐</h3>
						<div>아이유</div>
						<div class="text-secondary" style="font-size:12px">
							<div>앨범 삐삐</div>	
							<div>재생시간 3:14</div>	
							<div>작곡가 이종훈</div>	
							<div>작사가 아이유</div>	
						</div>
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
							<td><a href="#"><%= songInfo.get("title") %></a></td>
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