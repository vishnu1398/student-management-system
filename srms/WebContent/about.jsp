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
                  <a class="nav-link" href="home/loadstudents">Students</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="http://localhost:8081/srms/about.jsp">About</a>
                </li>
              </ul>
            </div>
          </nav>

    </div>
    
    <div class="container">
        <h1 class="text-center">About Us</h1>
    </div>
    
    <div class="container mt-5">
        <dl>
            <dt class="h4">What is this platform for ?</dt>
            <dd class="lead">This platform helps the user to add student records to the database and perform modifications on the same</dd>
        </dl>
        <dl>
            <dt class="h4">What are the technologies used ?</dt>
            <dd class="lead">The technologies used are Java, Spring MVC, JDBC, MySQL, HTML, CSS and Bootstrap</dd>
        </dl>
    </div>
	
</body>
</html>