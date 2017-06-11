<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<style type="text/css">
body {
    background-color: lightblue;
}
.topright {
    position: absolute;
    top: 150px;
    right: 16px;
    font-size: 18px;
}
</style>
<body>
<script type="text/javascript">
function validateForm(){
	var name = document.getElementById('validname').value;
	var salary = document.getElementById('validsalary').value;
	var flag = true;
	if(name.length<9){
		alert("Name should be 8 characters");
		flag = false;
		return flag;
	}
	if(salary<1000){
		alert("Salary should be grater than 1000");
		flag = false;
		return flag;
	}
	return flag;
}
</script>
<div class="jumbotron text-center" >
  <h1 colour="black">Login Page</h1>
 
</div>
<h4>LOGIN DETAILS</h4>
 <form action="/Applications/userlogin.do" method="post">  
UserName:&nbsp<input type="text" name="username"/><br/><br/>  
Password:&nbsp<input type="password" name="password"/><br/><br/>  
<button type="submit" class="btn btn-success" >Login</button>
</form>
<div class ="topright">
<h4>SEARCH EMPLOYEE DETAILS</h4>
<form action="/Applications/EmployeeInformation.do"  method ="post">
Employer ID:&nbsp<input type="text" name="employerid"/><br/><br/> 
<!-- <input  type="submit" value="login"/>  -->
<button type="submit" class="btn btn-success">Login</button>
</form>
</div>



<form action="/EmployeeApplication/add" method="post" onsubmit="return validateForm()">
<h3 style="margin-right: 108px">Add Employee</h3>
<table>
	<tr>
		<td>EmployeeId: </td>
		<td><input type="text" name="employeeId" value="10"></td>
	</tr>
	<tr>
		<td>EmployeeBirthDate: </td>
		<td><input type="text" name="birthdate" value="04/03/2017"></td>
	</tr>
	<tr>
		<td>EmployeeFirstName: </td>
		<td><input type="text" name="firstName" value="sourabh" id="validname"></td>
	</tr>
	<tr>
		<td>EmployeeLastName: </td>
		<td><input type="text" name="lastName" value="sp"></td>
	</tr>
	<tr>
		<td>EmployeeGender: </td>
		<td><input type="text" name="gender" value="M"></td>
	</tr>
	<tr>
		<td>EmployeeSalary: </td>
		<td><input type="text" name="salary" value="10000" id="validsalary"></td>
	</tr>
		<tr>
		<td><td><button type="submit" class="btn btn-success">Add(+)</button></td>
	</tr>
	<tr>
		<td colspan="2"><c:out value="${requestScope.display}"></c:out></td>
	</tr>
</table>

</form>
</body>
</html>