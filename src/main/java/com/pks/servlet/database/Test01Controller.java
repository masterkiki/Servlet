package com.pks.servlet.database;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test01Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html/");
		
//		PrintWriter out = response.getWriter();
//		
//		INSERT INTO `real_estate`
//		(`realtorId`, `addresss`, `area`, `type`, `price`,`rentPrice`, `createdAt`, `updatedAt`)
//		Value
//		(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, NULL, now(), now());
//		
		
	}
}
