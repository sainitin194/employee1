<%@page import="com.flm.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		Employee emp = (Employee)request.getAttribute("emp");
	%>
	<h1>Update Employee</h1>
	<form action="updateEmployee" method="post">
		<input type="hidden" name="id" value="<%=emp.getId() %>"/>
		<table border="1">
			<tr>
				<td>Name:</td>
				<td><input name="name" value="<%=emp.getName() %>" /></td>
			</tr>
			<tr>
				<td>Address:</td>
				<td><input name="address" value="<%=emp.getAddress() %>" /></td>
			</tr>
			<tr>
				<td>Mobile number:</td>
				<td><input name="mobilenumber" value="<%=emp.getMobilenumber() %>" /></td>
			</tr>
			<tr>
				<td>Salary:</td>
				<td><input type="number" name="salary" value="<%=emp.getSalary() %>" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Update Employee" /></td>
			</tr>
		</table>
	</form>
	
</body>
</html>