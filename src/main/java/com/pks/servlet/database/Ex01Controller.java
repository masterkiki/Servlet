package com.pks.servlet.database;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pks.servlet.common.MysqlService;

@WebServlet("/db/ex01")
public class Ex01Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		String selectQuery = "SELECT * FROM `used_goods`;";
		ResultSet resultSet = mysqlService.select(selectQuery);
		
		out.println("<html><head><title>중고 물품</title></head><body>");
		
		try {
			while(resultSet.next()) {
			 	String title = resultSet.getString("title");
			 	int price = resultSet.getInt("price");
			 	
			 	out.println("<div> 제목: " + title +"가격 : " + price + "</div>");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		String insertQuery = "INSERT INTO `used_goods`\r\n"
				+ "(`sellerID`, `title`, `price`, `description`, `picture`, `createdAt`, `updatedAt`)\r\n"
				+ "value\r\n"
				+ "(3, '고양이 간식 팝니다', 2000, '저희 고양이가 까탈스러워 안먹어서 팝니다', NULL, now(), now());";
		
		int count = mysqlService.update(insertQuery);
		out.println("<div> 인설트 쿼리 수행 결과 : " + count + "</div>");
		
		out.println("</body></html>");
		
		mysqlService.disconnect();
		
		
		
		
		
		
		// used_goods 에 있는 모든 행 출력하기
//		try {
//			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
//			
//			// 접속 주소, 아이디, 비밀번호
//			String url = "jdbc:mysql://localhost:3306/pks";
//			String userId = "root";
//			String password = "1234";
//		
//			
//			// 접속
//			Connection connection = DriverManager.getConnection(url, userId, password);
//			Statement statement = connection.createStatement();
//			
//			// 쿼리 수행
//			String selectQuery = "SELECT * FROM `used_goods`;";
//			ResultSet resultSet = statement.executeQuery(selectQuery);
//			
//			out.println("<html><head><title>중고 물품</title></head><body>");
//			
//			while(resultSet.next()) {
//			 	String title = resultSet.getString("title");
//			 	int price = resultSet.getInt("price");
//			 	
//			 	out.println("<div> 제목: " + title +"가격 : " + price + "</div>");
//			}
//			
//			out.println("</body></html>");
//		} catch(SQLException e) {
//			e.printStackTrace();
//		}
	}
}
