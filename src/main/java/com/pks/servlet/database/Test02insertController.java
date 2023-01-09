package com.pks.servlet.database;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pks.servlet.common.MysqlService;

@WebServlet("/db/test02_insert")
public class Test02insertController extends HttpServlet{
	
	
	// doGet 인지 doPost 인지 정해야하는데
	// 이름과 주소를 전달받고 insert 한다.
	// 주소는 꽤 길어질수있으니 doPost하는게 좋다
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String name = request.getParameter("name");
		String url = request.getParameter("url");

		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "INSERT INTO `bookmark`\r\n"
				+ "(`name`,`url`,`createdAt`,`updatedAt`)\r\n"
				+ "VALUE\r\n"
				+ "('" + name +"','"+ url +"',now(),now());";
		
		int count = mysqlService.update(query);
		
		
		mysqlService.disconnect();
		
		//리스트 페이지로 리다이렉트
		response.sendRedirect("/db/test02.jsp");
		
		
	}
}