<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<div class="container bg-light text-dark">
        <h1 class="display-6 p-1">Student Records Management</h1>

        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            
            <div class="collapse navbar-collapse" id="navbarNav">
              <ul class="navbar-nav">
                <li class="nav-item active">
                  <a class="nav-link" href="http://localhost:8081/srms/index.jsp">Home</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="http://localhost:8081/srms/home/loadstudents">Students</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="http://localhost:8081/srms/about.jsp">About</a>
                </li>
              </ul>
            </div>
          </nav>

    </div>
    <div class="container mt-5">
        <h5 class="text-center">Student Records</h5>
        <div class="container p-1">
            <div class="row">
                <div class="col-md-2">
                   <a class="btn btn-secondary" href="http://localhost:8081/srms/home/addstudent" role="button">Add Student</a>
                </div>
            </div>
        </div>
        <table class="table mt-2">
            <thead class="bg-dark text-white">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Name</th>
                <th scope="col">Age</th>
                <th scope="col">Gender</th>
                <th scope="col">Update Record</th>
                <th scope="col">Delete Record</th>
              </tr>
            </thead>
            <tbody>
            <c:forEach items="${studentobj}" var="student">
				<tr>	
					<td>${student.id}</td>
					<td>${student.name}</td>
					<td>${student.age}</td>
					<td>${student.gender}</td>
					<td><a class="btn btn-outline-secondary" href="http://localhost:8081/srms/home/updatestudents?student_id=${student.id}&name=${student.name}&age=${student.age}&gender=${student.gender}" role="button">Update</a></td>
		            <td><a class="btn btn-outline-secondary" href="http://localhost:8081/srms/home/deletestudents?student_id=${student.id}" role="button">Delete	</a></td>
				</tr>
			</c:forEach>                          
            </tbody>
          </table>
          
          
    </div>
</body>
</html>