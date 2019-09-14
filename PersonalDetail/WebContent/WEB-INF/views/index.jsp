<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Personal Detail</title>
</head>
<body>
	<div align="center">
		<h1>Personal Detail</h1>
		<form method="get" action="search">
			<input type="text" name="keyword" /> 
			<input type="submit" value="Search" />
		</form>
		
		<h3><a href = "new" >New Person</a></h3>
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
				<th>Action</th>
			</tr>
			<c:forEach items="${listPerson}" var="person">
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
					<td>
						<a href="edit?id=${person.id }">UPDATE</a>
						&nbsp;&nbsp;&nbsp;
						<a href="delete?id=${person.id }">DELETE</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>

</body>
</html>