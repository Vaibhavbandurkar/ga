<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script >

function validateform(){ 
	var name= document.myform.firstName.value; 

if (name==null || name=="" ) {
	alert("Name can't be blank");
	document.myform.firstName.focus();
	return false;
}
}
</script>
<title>New Person</title>
</head>
<body>

	<div align="center">
		<h2>New Person</h2>
		<form:form action="save" method="post" modelAttribute="person" name="myform" onsubmit="return validateform()" >
			<table border="0" cellpadding="5">
				<tr>
					<td>First Name:</td>
					<td><form:input path="firstName" /></td>
			<%-- 		<td><form:errors path="firstName" /></td> --%>
				</tr>
				<tr>
					<td>Last Name:</td>
					<td><form:input path="lastName" /></td>
					<td><form:errors path="lastName" /></td>
				</tr>
				<tr>
					<td>E-mail:</td>
					<td><form:input path="email" /></td>
					<td><form:errors path="email" /></td>
				</tr>
				<%-- <tr>
					<td>Birth Date:</td>
					<td><form:input path="birthDate" /></td>
				</tr> --%>
				<tr>
					<td>Company Name:</td>
					<td><form:input path="companyName" /></td>
					<td><form:errors path="companyName" /></td>
				</tr>
				<tr>
					<td>Address:</td>
					<td><form:input path="address" /></td>
					<td><form:errors path="address" /></td>
				</tr>
				<tr>
					<td>City:</td>
					<td><form:input path="city" /></td>
					<td><form:errors path="city" /></td>
				</tr>
				<tr>
					<td>Gender:</td>
					<td><form:radiobutton path="gender" value="male" />Male 
					<form:radiobutton path="gender" value="female" />Female<br /></td>
					<td><form:errors path="gender" /></td>
				</tr>
				<tr>
					<td>Contact Number:</td>
					<td><form:input path="contactNumber" /></td>
					<td><form:errors path="contactNumber" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Save" /></td>
				</tr>
			</table>
		</form:form>
	</div>

</body>
</html>