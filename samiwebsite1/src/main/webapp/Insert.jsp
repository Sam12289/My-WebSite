<%@page import="java.sql.*"%>
<%@page import="com.connection.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
int empId = Integer.parseInt(request.getParameter("empId"));

String empName = request.getParameter("empName");

String empMobileNo = request.getParameter("empMobileNo");

try {
	Connection con = ConnectionProvider.createConnection();

	String insertQuery = "INSERT INTO employee (empId, empName, empMobileNo) VALUES (?, ?, ?)";

	PreparedStatement pstmt = con.prepareStatement(insertQuery);
	pstmt.setInt(1, empId);
	pstmt.setString(2, empName);
	pstmt.setString(3, empMobileNo);

	int rowsAffected = pstmt.executeUpdate();
	out.println(rowsAffected + " row(s) inserted.");

	pstmt.close();
	con.close();

} catch (Exception e) {
	out.println(e);

}
response.sendRedirect("fetch.jsp");
%>