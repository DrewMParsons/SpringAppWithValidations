<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import= "springwork.model.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Account Modify Page</title>
</head>

<body>
<% User u = (User)session.getAttribute("userkey") ;%>
<h2>CHANGE USER INFO</h2>
	<div class="container">
		
		<form action="submit_changes" method="POST">
			<div class="sub_field">
				<label>User Name</label> 
				<input id="user" name="username"
					type="text" value= <%= u.getUsername() %> />
			</div>
			
			<div class="sub_field">
				<label>Password</label> 
				<input id="pass" name="password"
					type="password" value= <%= u.getPassword() %> />
			</div>
			<div class="sub_field">
				<label>Email</label> 
				<input id="email" name="email"
					type="text" value=<%= u.getEmail() %> />
			</div>
			<div class="btn">
				<input id="sub" name="submit"
					type="submit" value="Change Info" />
			</div>
		</form>
	</div>

</body>
</html>