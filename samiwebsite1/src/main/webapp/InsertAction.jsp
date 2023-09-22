<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file= "Navbar.jsp" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body>
    <h1>Please Insert Employee details</h1>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
 	
 	<div class="container">
 		<form action="Insert.jsp" method="post">
 		<div class="input-group mb-3">
				<input type="text" class="form-control"
					placeholder="Enter employee id"
					aria-label="Recipient's username" aria-describedby="basic-addon2"
					name="empId">
			</div>
			<div class="input-group mb-3">
				<input type="text" class="form-control"
					placeholder="Enter employee name"
					aria-label="Recipient's username" aria-describedby="basic-addon2"
					name="empName">
			</div>
			<div class="input-group mb-3">
				<input type="text" class="form-control"
					placeholder="Enter employee mobile no"
					aria-label="Recipient's username" aria-describedby="basic-addon2"
					name="empMobileNo">
			</div>
			 <button type="submit" class="btn btn-primary">Submit</button>
			 </form>
 	</div>
 
  </body>
</html>