<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
	<title>Save User</title>
</head>

<body>
	
<h2>Guess - User</h2>

	<h3>Save Customer</h3>
	
	<form:form action="saveUser" modelAttribute="user" method="POST">

		<!-- need to associate this data with customer id -->
		<form:hidden path="id" />
				
		<table>
			<tbody>
				<tr>
					<td><label>First name:</label></td>
					<td><form:input path="firstName" /></td>
				</tr>
			
				<tr>
					<td><label>Last name:</label></td>
					<td><form:input path="lastName" /></td>
				</tr>

				<tr>
					<td><label>Email:</label></td>
					<td><form:input path="emailAddress" /></td>
				</tr>
				
				<tr>
					<td><label></label></td>
					<td><input type="submit" value="Save" class="save" /></td>
				</tr>
			
			</tbody>
		</table>
	
	
	</form:form>

	<div style="clear; both;"></div>
	
	<p>
		<a href="${pageContext.request.contextPath}/user/list">Back to List</a>
	</p>


</body>

</html>










