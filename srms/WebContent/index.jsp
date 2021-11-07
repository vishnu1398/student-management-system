<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
        <h2 class="align-middle">Welcome to the SRM tool,</h2>
        <p class="h5 text-secondary">This platform helps the user to add Student records to the database and perform modifications on the same.</p>
        <p class="h5 text-secondary">Create a student record now ! <a class="text-primary text-decoration-none" href="addstudent.html">Click here</a></p>

    </div>
</body>
</html>