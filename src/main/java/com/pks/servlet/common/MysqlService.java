package com.pks.servlet.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	// 접속주소, 아이디, 비밀번호
	
	private final String url = "jdbc:mysql://localhost:3306/pks";
	private final String userId = "root";
	private final String password = "1234";

	private Connection connection;
	private Statement statement;
	
	// 접속기능 
	public void connect() {
		// 접속
		Connection connection;
		try {
			connection = DriverManager.getConnection(url, userId, password);
			statement = connection.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// 쿼리 수행기능 select
	public ResultSet select(String query) {
		try {
			return statement.executeQuery(query);
		} catch (SQLException e) {

			e.printStackTrace();
		
			return null;
		}
	}
	
	// 쿼리 수행기능 insert, update, delete
	
	public int update(String query) {
		try {
			return statement.executeUpdate(query);
		} catch (SQLException e) {

			e.printStackTrace();
			//에러 상황은 -1로 표현
			return -1;
		}
	}
	
	//  접속 끊는 메소드
	public void disconnect() {
		try {
			statement.close();
			connection.close();
		} catch (SQLException e) {

			e.printStackTrace();
	
		}
	}
	
}
