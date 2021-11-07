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
    

    <div class="container mt-3">
        <h3 class="text-center text-dark">Add Student !</h3>
        <hr>
    </div>  
    <div class="container mt-5">
        <form action="addRecord" method="POST">
        	<div class="form-group row m-2">
              <label for="inputEmail3" class="col-sm-2 col-form-label">Student Id</label>
              <div class="col-sm-10">
                <input type="text" name="id" class="form-control" id="inputEmail3" placeholder="Student Id">
              </div>
            </div>
            <div class="form-group row m-2">
              <label for="inputEmail3" class="col-sm-2 col-form-label">Student Name</label>
              <div class="col-sm-10">
                <input type="text" name="name" class="form-control" id="inputEmail3" placeholder="Student Name">
              </div>
            </div>
            <div class="form-group row m-2">
              <label for="inputPassword3" class="col-sm-2 col-form-label">Age</label>
              <div class="col-sm-10">
                <input type="number" name="age" class="form-control" id="inputPassword3" placeholder="Age">
              </div>
            </div>
            <fieldset class="form-group m-3">
              <div class="row">
                <legend class="col-form-label col-sm-2 pt-0">Gender</legend>
                <div class="col-sm-10">
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="Male" checked>
                    <label class="form-check-label" for="gridRadios1">
                      Male
                    </label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="Female">
                    <label class="form-check-label" for="gridRadios2">
                      Female
                    </label>
                  </div>
                </div>
              </div>
            </fieldset>
            
            <div class="form-group row m-1">
              <div class="col-sm-10">
                <button type="submit" class="btn btn-outline-primary">Add record</button>
              </div>
            </div>
          </form>
    </div>

</body>
</html>