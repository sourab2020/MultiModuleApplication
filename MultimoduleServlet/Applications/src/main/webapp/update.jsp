<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<c:set var="EmployeeDetails" value="${requestScope.employeeId}"></c:set>
<div style="margin-top: 50px; margin-left: 10px;">
<form action="/Applications/update" method="post">
<h3 style="margin-left: 56px">Edit Employee Details</h3>
<table>
	<tr>
		<td>EmployeeId:</td><td><input type="text" value="${EmployeeDetails.getEmployeeNo()}" name="employeeId" disabled ></td>
	</tr>
	<tr>
		<td>EmployeeFirstName: </td><td><input type="text" name="firstNAme"></td>
	</tr>
	<tr>
		<td>EmployeeLastName: </td><td><input type="text" name="lastName"></td>
	</tr>
	<tr>
		<td>EmployeeGender: </td><td><input type="text" name="gender"></td>
	</tr>
	<tr>
		<td></td><td><input type="submit" value="Update" class="btn btn-success"></td>
	</tr>
	<tr>
		<td colspan="2"><c:out value="${requestScope.display}"></c:out></td>
	  
	</tr>
</table>

</form>
</div>
</body>
</html>