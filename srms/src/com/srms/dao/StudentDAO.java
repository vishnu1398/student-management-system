package com.srms.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.srms.apis.Student;

public class StudentDAO {

	private String driver;
	private String url;
	private String user;
	private String password;

	Connection con;

	public String getDriver() {
		return driver;
	}

	public void setDriver(String driver) {
		this.driver = driver;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void init() throws ClassNotFoundException, SQLException {
		createDBConnection();
	}

	public void createDBConnection() throws ClassNotFoundException, SQLException {
		Class.forName(driver);

		con = DriverManager.getConnection(url, user, password);
	}

	public List<Student> getStudents() throws SQLException, ClassNotFoundException {
		List<Student> studentList = new ArrayList<Student>();

		String sql = "select * from srmstudents";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);
		while (rs.next()) {
			studentList.add(new Student(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4)));
		}
		return studentList;
	}

	public void deleteStudent(int studentId) throws SQLException {
		String sql = "delete from srmstudents where id = " + studentId;
		Statement st = con.createStatement();
		st.executeUpdate(sql);
	}

	public void insertStudents(int id, String name, int age, String gender) throws SQLException {
		String sql = "insert into srmstudents values (" + id + ", '" + name + "', " + age + ", '" + gender + "')";

		Statement st = con.createStatement();

		st.executeUpdate(sql);
	}

	public void updateStudents(int id, String name, int age, String gender) throws SQLException {
		String sql = "update srmstudents set studentname = '" + name + "', age = " + age + ", gender = '" + gender
				+ "' where id = " + id;

		Statement st = con.createStatement();

		st.executeUpdate(sql);
	}

	public void display() throws ClassNotFoundException, SQLException {
		System.out.println("driver : " + driver);
		System.out.println("url : " + url);
		System.out.println("user : " + user);
		System.out.println("password : " + password);
	}

	public void closeDBConnection() throws SQLException {
		con.close();
	}

	public void destroy() throws SQLException {
		closeDBConnection();
	}

}
