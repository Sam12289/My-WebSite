<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.connection.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="Navbar.jsp"%>
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
    <h1>Hello, world!</h1>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
    
    <div class="container">
    <h2>Update Employee Process</h2>
    <%
    try {
        int empId = Integer.parseInt(request.getParameter("empId"));
        String empName = request.getParameter("empName");
        String empMobileNo = request.getParameter("empMobileNo");

        Connection con = ConnectionProvider.createConnection();
        String updateQuery = "UPDATE Employee SET empName = ?, empMobileNo = ? WHERE empId = ?";
        PreparedStatement pstmt = con.prepareStatement(updateQuery);
        pstmt.setString(1, empName);
        pstmt.setString(2, empMobileNo);
        pstmt.setInt(3, empId);

        int rowsAffected = pstmt.executeUpdate();

        if (rowsAffected > 0) {
    %>
        <p>Employee details updated successfully.</p>
    <%
        } else {
    %>
        <p>Error updating employee details.</p>
    <%
        }

    } catch (Exception e) {
        out.println(e);
    }
    %>
    <a href="fetch.jsp">Back to Employee List</a>
    </div>
  </body>
</html>