<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring Boot</title>
</head>
<body>
  <h1>Spring Boot - MVC web application example</h1>
  	<hr>

 	First name: ${registeredStudent.firstName}  
  	<hr>
  	Last name: ${registeredStudent.lastName}
  	<hr>
	email: ${registeredStudent.email}
	<hr>
	mobile: ${registeredStudent.mobile}
	<hr>
	gender:	${registeredStudent.gender}
	<hr>
	<fmt:formatDate value="${registeredStudent.dateOfBirth}" type="date" pattern="dd-MMM-yyyy"/>
	<hr>
	address: ${registeredStudent.address}
	<hr>
	city: ${registeredStudent.city}
	<hr>
	pincode: ${registeredStudent.pincode}
	<hr>
	state: ${registeredStudent.state}
	<hr>
	country: ${registeredStudent.country}
	<hr>
	courseAppliedFor: ${registeredStudent.courseAppliedFor}
</body>
</html>