<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/styles/main.css"></link>
</head>
<body>
	<h2>Index Page</h2>
	<div class="container">
		<form:form action="userInfo" method="POST" modelAttribute="userkey">
			<div class="sub_field">
				<label>User Name</label> 
				<form:input id="username" path="username"
					type="text" placeholder="Enter your username" />
				<form:errors path="username" />	
			</div>
			<div class="sub_field">
				<label>Password</label> 
				<input id="pass" name="password"
					type="password" placeholder="######" />
			</div>
			<div class="sub_field">
				<label>Email</label> 
				<form:input id="email" path="email"
					type="text" placeholder="Enter your email" />
				<form:errors path="email" />	
			</div>
			<div class="btn">
				<input id="sub" name="submit"
					type="submit" value="Submit Info" />
			</div>
		</form:form>
	</div>
</body>
</html>