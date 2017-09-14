<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>

<html>

<head>
	<title>List Users</title>
</head>

<body>

<h2>Guess - User</h2>
	
	<input type="button" value="Add User"
		   onclick="window.location.href='showFormForAdd'; return false;"
		   class="add-button"
	/>
		
	<table>
		<tr>
			<th>Action</th>
			<th>Id</th>
			<th>Last Name</th>
			<th>First Name</th>
			<th>Email Address</th>
		</tr>
		
		<!-- loop over and print our customers -->
		<c:forEach var="user" items="${users}">
		
			<!-- construct an "update" link with user id -->
			<c:url var="updateLink" value="/user/showFormForUpdate">
				<c:param name="userId" value="${user.id}" />
			</c:url>					

			<!-- construct an "delete" link with user id -->
			<c:url var="deleteLink" value="/user/delete">
				<c:param name="userId" value="${user.id}" />
			</c:url>					
			
			<tr>
				<td>
					<!-- display the update link -->
					<a href="${updateLink}">Update</a>
					|
					<a href="${deleteLink}"
					   onclick="if (!(confirm('Are you sure you want to delete this user?'))) return false">Delete</a>
				</td>
				
				<td> ${user.id} </td>
				<td> ${user.lastName} </td>
				<td> ${user.firstName} </td>
				<td> ${user.emailAddress} </td>

			</tr>
		
		</c:forEach>
				
	</table>

</body>

</html>









