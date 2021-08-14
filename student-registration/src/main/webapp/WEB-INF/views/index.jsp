<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- Static content -->
<link rel="stylesheet" href="/resources/css/index.css">
<script type="text/javascript" src="/resources/js/app.js"></script>
<title>Spring Boot</title>
</head>
<body>
	<h1>Welcome to our application</h1>
	<hr>

	<div class="button">
		<form:form method="GET" action="registration">

			<input type="submit" id="registerButton" value="Register">

		</form:form>

	</div>

</body>
</html>