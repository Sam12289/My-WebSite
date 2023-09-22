      <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page errorPage="Error.jsp"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<title>Employee</title>
<style>
        /* Background image */
        body {
            background-image: url('./Image/pic44.jpg');
            
            background-size: 1500px 1000px;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
           
        /* Navbar styling */
        .navbar {
            background-color: #343a40; /* Dark gray color */
        }

        .navbar-brand {
            font-size: 24px;
            font-weight: bold;
            color: #fff; /* White color */
        }

        .nav-link {
            color: #f8f9fa; /* Light gray color */
        }

        .nav-link:hover {
            color: #dc3545; /* Red color on hover */
        }

        /* Additional custom styling */
        .container {
            margin-top: 50px;
            text-align: center;
            color: #fff; /* White color */
        }

        h1 {
            font-size: 36px;
            margin-top: 20px;
            color:white;
        }
    </style>
</head>

  <body>
  <%
  	//String username = (String)request.getParameter("username").toString();
  	String username = session.getAttribute("username").toString();
  	%>
   <div class="container fluid">
  	<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="Home.jsp">Employee</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Home.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="InsertAction.jsp">Insert</a>
        </li>
       <li class="nav-item">
          <a class="nav-link" href="fetch.jsp">Fetch</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Logout.jsp" tabindex="-1" >Logout</a>
        </li>
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
  	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

</body>
</html>