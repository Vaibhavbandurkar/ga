<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Result</title>
</head>
<body>
	<div align="center">
		<h1>Search Result</h1>
		
		<table border="1" padding="5">
			<tr>
				<th>ID</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>E-mail</th>
				<!-- <th>Birth Date</th> -->
				<th>Company Name</th>
				<th>Address</th>
				<th>City</th>
				<th>Gender</th>
				<th>Contact Number</th>
				
			</tr>
			<c:forEach items="${result}" var="person">
				<tr>
					<td>${person.id }</td>
					<td>${person.firstName }</td>
					<td>${person.lastName }</td>
					<td>${person.email }</td>
					<%-- <td>${person.birthDate }</td> --%>
					<td>${person.companyName }</td>
					<td>${person.address }</td>
					<td>${person.city }</td>
					<td>${person.gender }</td>
					<td>${person.contactNumber }</td>
					
				</tr>
			</c:forEach>
		</table>
	</div>

</body>
</html>