<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Person</title>
</head>
<body>

	<div align="center">
		<h2>Edit Person</h2>
		<form:form action="save" method="post" modelAttribute="person">
			<table border="0" cellpadding="5">
				<tr>
					<td>ID:</td>
					<td>${person.id} <form:hidden path="id" />
				</tr>
				<tr>
					<td>First Name:</td>
					<td><form:input path="firstName" /></td>
				</tr>
				<tr>
					<td>Last Name:</td>
					<td><form:input path="lastName" /></td>
				</tr>
				<tr>
					<td>E-mail:</td>
					<td><form:input path="email" /></td>
				</tr>
				<%-- <tr>
					<td>Birth Date:</td>
					<td><form:input path="birthDate"   placeholder="MM/dd/yyyy"/></td>
				</tr> --%>
				<tr>
					<td>Company Name:</td>
					<td><form:input path="companyName" /></td>
				</tr>
				<tr>
					<td>Address:</td>
					<td><form:input path="address" /></td>
				</tr>
				<tr>
					<td>City:</td>
					<td><form:input path="city" /></td>
				</tr>
				<tr>
					<td>Gender:</td>
					<td><form:radiobutton path="gender" value="Male" />Male 
					<form:radiobutton path="gender" value="Female" />Female<br /></td>
				</tr>
				<tr>
					<td>Contact Number:</td>
					<td><form:input path="contactNumber" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="save" /></td>
					
					<td colspan="2"><input type="reset" value="Reset" /></td>
				</tr>
			</table>
		</form:form>
	</div>

</body>
</html>