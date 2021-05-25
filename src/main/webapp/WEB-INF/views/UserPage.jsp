<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Page</title>
</head>

<body>

	<div class="container">
		
		<form action="userInfo_confirm" method="POST">
			<div class="sub_field">
				<label>User Name</label> 
				<input id="user" name="username"
					type="text" value= ${userkey.username }  />
			</div>
			
			<div class="sub_field">
				<label>Password</label> 
				<input id="pass" name="password"
					type="password" value= ${userkey.password } />
			</div>
			<div class="sub_field">
				<label>Email</label> 
				<input id="email" name="email"
					type="text" value=${userkey.email } />
			</div>
			<div class="btn">
				<input id="sub" name="submit"
					type="submit" value="Submit Info" />
			</div>
		</form>
	</div>

</body>
</html>