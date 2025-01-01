<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.flm.model.Employee"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@charset "UTF-8";
body {
  font-family: sans-serif; 
  margin: 0;
  padding: 20px;
}

h1 {
  text-align: center;
  margin-bottom: 20px;
}

table {
  width: 100%;
  border-collapse: collapse;
  margin-top: 20px;
}

th, td {
  border: 1px solid #ddd;
  padding: 15px;
  text-align: left;
}

th {
  background-color: #f2f2f2; 
  font-weight: bold;
}

tr:nth-child(even) {
  background-color: #f9f9f9; 
}

.add-button {
  
  margin-top: 20px;
  padding: 10px 20px;
  background-color: #4CAF50; 
  color: white;
  text-decoration: none;
  border: none;
  border-radius: 5px;
  align:center;
  
}

.edit-button,
.delete-button {
  padding: 5px 10px;
  background-color: #f0f0f0; 
  border: 1px solid #ccc;
  border-radius: 3px;
  text-decoration: none;
  color: #333;
  margin-right: 5px;
}
.center{
text-align:center;

}
</style>
</head>
<body>

<h1>Employee details</h1>
<div class="center"><a href="addEmployee" class="add-button">Add Employee</a></div>

<table width="100%" border="1">
<tr>
			<th align="right">Id</th>
			<th align="left">Name</th>
			<th align="left">Address</th>
			<th align="left">Mobile number</th>
			<th align="right">Salary</th>
			<th>Edit Action</th>
			<th>Delete Action</th>
		</tr>
<%
List<Employee> employees=(List<Employee>)request.getAttribute("emps");
for(Employee emp : employees){
%>
   <tr>
		<td><%=emp.getId() %></td>
		<td><%=emp.getName() %></td>
		<td><%=emp.getAddress() %></td>
		<td><%=emp.getMobilenumber() %></td>
		<td><%=emp.getSalary() %></td>
		<td align="center"><a href="editEmployee?id=<%=emp.getId() %>" class="edit-button">Edit</a></td>
		<td align="center"><a href="deleteEmployee?id=<%=emp.getId() %>" class="delete-button">Delete</a></td>
   </tr>
<%
 }
%>
</table>
</body>
</html>