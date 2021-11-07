package com.srms.controllers;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.srms.apis.Student;
import com.srms.dao.StudentDAO;

@Controller
public class StudentController {

	@Autowired
	StudentDAO dao;

	@RequestMapping("/loadstudents")
	public String loadStudents(Model model) throws SQLException, ClassNotFoundException {
		dao.display();
		List<Student> students = dao.getStudents();

		model.addAttribute("studentobj", students);

		return "students";
	}

	@RequestMapping("/addstudent")
	public String addStudent() {
		return "addstudent";
	}

	@RequestMapping(value = "/addRecord", method = RequestMethod.POST)
	public String addRecord(HttpServletRequest request) throws SQLException {
		int sId = Integer.parseInt(request.getParameter("id"));
		String sName = request.getParameter("name");
		int sAge = Integer.parseInt(request.getParameter("age"));
		String sGender = request.getParameter("gridRadios");

		dao.insertStudents(sId, sName, sAge, sGender);

		return "redirect:/home/loadstudents";
	}

	@RequestMapping("/updatestudents")
	public String updateStudents(HttpServletRequest request, Model model) throws ClassNotFoundException, SQLException {
		int studentId = Integer.parseInt(request.getParameter("student_id"));
		String studentName = request.getParameter("name");
		int studentAge = Integer.parseInt(request.getParameter("age"));
		String studentGender = request.getParameter("gender");

		Student studentObj = new Student(studentId, studentName, studentAge, studentGender);

		model.addAttribute("studentObj", studentObj);

		return "updatestudents";
	}

	@RequestMapping(value = "/saveRecord", method = RequestMethod.POST)
	public String updateRecord(HttpServletRequest request) throws SQLException {
		int sId = Integer.parseInt(request.getParameter("id"));
		String sName = request.getParameter("name");
		int sAge = Integer.parseInt(request.getParameter("age"));
		String sGender = request.getParameter("gridRadios");

		dao.updateStudents(sId, sName, sAge, sGender);

		System.out.println("update done !");

		return "redirect:/home/loadstudents";
	}

	@RequestMapping("/deletestudents")
	public String deleteStudents(HttpServletRequest request, Model model) throws ClassNotFoundException, SQLException {
		int studentId = Integer.parseInt(request.getParameter("student_id"));

		dao.deleteStudent(studentId);

		return "redirect:/home/loadstudents";
	}

}
