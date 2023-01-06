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
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
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
		
		response.sendRedirect("/db/test02.jsp");
		

		
	}
}