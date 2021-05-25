<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import= "springwork.model.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Account </title>
</head>
<body>
<% User u = (User)session.getAttribute("userkey") ;%>
<div class="user_table">
	
	<table>
		<tr>
		<td>User Name</td>
		<td><%= u.getUsername() %></td>
		</tr>
		<tr>
		<td>Password</td>
		<td><%= u.getPassword() %></td>
		</tr>
		<tr>
		<td>Email</td>
		<td><%= u.getEmail() %></td>
		</tr>
	</table>
	<a href="modify">Modify Your Info</a>
</div>
</body>
</html>