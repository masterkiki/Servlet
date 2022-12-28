<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.List" %>
<%@ page import = "java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp test01</title>
</head>
<body>
	<%
	// 점수들의 평균 구하기
		int[] scores = {80, 90, 100, 95, 80};
		
		int sum = 0;
		for(int i = 0; i < scores.length; i++){
			sum += scores[i];			
		}
		double average = sum / (double)scores.length;	
	%>
	
	<h2>점수 평균은 <%=average %> 입니다.</h2>

	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		
		//향상된 for문 버전
		int score = 0;
		for(String check:scoreList){
			if(check.equals("O")){
				score += 100 / scoreList.size();
			}
		}
		/* 일반적for문
		for(int i = 0; i < scoreList.size(); i++){
			if(scoreList.get(i).equals("O")){
				sum += 10;		
			}
		} 
		*/
	%>
	
	<h2>채점 결과는 <%= score %>점 입니다.</h2>
	
	<%!
	
		// 1 부터 N 까지의 합을 구하는 메소드
		public int sumAll(int n){
			int result = 0;
			for(int i = 1; i <= n; i++){
				result += i;
			}
			return result;
		}
	%>
	
	<h2>1에서 50까지의 합은 <%= sumAll(50) %></h2>
	
	<%
	
		String birthDay = "20010820";
		String yearString = birthDay.substring(0,4);
		int year = Integer.parseInt(yearString);
		
		int age = 2022 - year + 1;
	%>
	
	<h2><%= birthDay %> 의 나이는 <%= age %>살 입니다.</h2>

</body>
</html>