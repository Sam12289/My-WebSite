<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="com.connection.ConnectionProvider" %>
<%@ page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="Navbar.jsp" %>
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
    <h1>Please Update Employee</h1>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
    <div class="container">
    <h2>Update Employee</h2>
    <%
    try {
        int empId = Integer.parseInt(request.getParameter("empId"));

        Connection con = ConnectionProvider.createConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM Employee WHERE empId = " + empId);

        if (rs.next()) {
            String empName = rs.getString("empName");
            String empMobile = rs.getString("empMobileNo");
    	
    
    %>
    <form action="UpdateAction.jsp" method="post">
        <div class="mb-3">
            <label for="empId" class="form-label">Employee ID</label>
            <input type="text" class="form-control" id="empId" name="empId" value="<%= request.getParameter("empId") %>" readonly>
        </div>
        <div class="mb-3">
            <label for="empName" class="form-label">Employee Name</label>
            <input type="text" class="form-control" id="empName" name="empName" required value="<%= empName %>">
        </div>
        <div class="mb-3">
            <label for="empMobile" class="form-label">Employee Mobile</label>
            <input type="text" class="form-control" id="empMobile" name="empMobileNo" required value="<%= empMobile %>">
        </div>
        <button type="submit" class="btn btn-primary">Update Employee</button>
    </form>
</div>
<%
        } else {
    %>
    <p>No employee found with the given ID.</p>
    <%
        }

    } catch (Exception e) {
        out.println(e);
    }
    %>
    
    
  </body>
</html>