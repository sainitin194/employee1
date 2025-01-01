<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
  font-family: sans-serif;
  margin: 0;
  padding: 20px;
  background-color: #f0f0f0; 
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

td {
  border: 1px solid #ddd;
  padding: 15px;
  text-align: left;
}


tr:nth-child(even) {
  background-color: #f9f9f9; 
}





input[type="text"],
input[type="number"] {
  width: 100%; 
  padding: 8px;
  margin-bottom: 10px;
  border: 1px solid #ccc;
  border-radius: 3px;
}



</style>
</head>
<body>
	<h1>Add Employee</h1>
	<form action="saveEmployee" method="post">
		<table border="1">
			<tr>
				<td>Name:</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td>Address:</td>
				<td><input type="text" name="address" /></td>
			</tr>
			<tr>
				<td>Mobile number:</td>
				<td><input type="number" name="mobilenumber" /></td>
			</tr>
			<tr>
				<td>Salary:</td>
				<td><input type="number" name="salary" /></td>
			</tr>
			
			<tr>
			
			<td colspan="2"><input type="submit"
					value="Save Employee" /></td>
					
				
			</tr>
			
		</table>
	</form>
</body>
</html>