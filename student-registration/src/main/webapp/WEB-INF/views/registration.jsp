<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- Static content -->
<link rel="stylesheet" href="/resources/css/registration.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.js"></script>
<script type="text/javascript" src="/resources/js/app.js"></script>
<title>Spring Boot</title>
</head>
<body>
	<h1>Student Registration Form</h1>

	
	<div class="form">
		<form:form name="StudentForm" id="StudentForm" action="success" modelAttribute="student" onsubmit="return validate()">
			<div class="row">
				<div class="label">First Name</div>
				<div class="field">
					<form:input id="firstName" path="firstName" />
				</div>
			</div>
			<div class="row">
				<div class="label">Last Name</div>
				<div class="field">
					<form:input id="lastName" path="lastName" />
				</div>
			</div>
			<div class="row">
				<div class="label">Email ID</div>
				<div class="field">
					<form:input id="email" path="email" />
				</div>
			</div>
			<div class="row">
				<div class="label">Mobile number</div>
				<div class="field">
					<form:input id="mobile" path="mobile" />
				</div>
			</div>
			<div class="row">
				<div class="label">Gender</div>
				<div class="field">
					<form:radiobutton id="optionMale" path="gender" value="Male"/>
					<label class="sublabel" for="optionMale">Male</label> 
					<form:radiobutton id="optionFemale" path="gender" value="Female"/>
					<label class="sublabel"	for="optionFemale">Female</label>
				</div>
			</div>
			<div class="row">
				<div class="label">Date of birth</div>
				<div class="field">
					<form:input id="dob" path="dateOfBirth"/>
				</div>
			</div>
			<div class="row">
				<div class="label">Address</div>
				<div class="field">
					<textarea id="address" rows="6" cols="20" name="Address"></textarea>
				</div>
			</div>
			<div class="row">
				<div class="label">City</div>
				<div class="field">
					<form:input id="city" path="city" />
				</div>
			</div>
			<div class="row">
				<div class="label">Pin Code</div>
				<div class="field">
					<form:input id="pincode" path="pincode" />
				</div>
			</div>
			<div class="row">
				<div class="label">State</div>
				<div class="field">
					<form:input id="state" path="state" />
				</div>
			</div>
			<div class="row">
				<div class="label" id="CountryLabel">Country</div>
				<div class="field">
					<form:input id="country" path="country" />
				</div>
			</div>		
			
			<div class="row">
				<div class="label">Course Applied For</div>
				<div class="field verticalStack">
					<div>
						<form:radiobutton path="courseAppliedFor" id="BCA"
							value="BCA(Bachelor of Computer Applications)" />
						<label class="sublabel" for="BCA">BCA(Bachelor of Computer
							Applications)</label>
					</div>
					<div>
						<form:radiobutton path="courseAppliedFor" id="BCom"
							value="B.Com(Bachelor of Commerce)" />
						<label class="sublabel" for="B.Com">B.Com(Bachelor of
							Commerce)</label>
					</div>
					<div>
						<form:radiobutton path="courseAppliedFor" id="BSc"
							value="B.Sc(Bachelor of Science)" />
						<label class="sublabel" for="B.Sc">B.Sc(Bachelor of
							Science)</label>
					</div>
					<div>
						<form:radiobutton path="courseAppliedFor" id="BA"
							value="BA(Bachelor of Arts)" />
						<label class="sublabel" for="BA">BA(Bachelor of Arts)</label>
					</div>
					<div>
						<form:radiobutton path="courseAppliedFor" id="MCA"
							value="MCA(Master of Computer Applications)" />
						<label class="sublabel" for="MCA">MCA(Bachelor of Computer
							Applications)</label>
					</div>
					<div>
						<form:radiobutton path="courseAppliedFor" id="MCom"
							value="M.Com(Master of Commerce)" />
						<label class="sublabel" for="M.Com">M.Com(Bachelor of
							Commerce)</label>
					</div>
					<div>
						<form:radiobutton path="courseAppliedFor" id="MSc"
							value="M.Sc(Master of Science)" />
						<label class="sublabel" for="M.Sc">M.Sc(Bachelor of
							Science)</label>
					</div>
					<div>
						<form:radiobutton path="courseAppliedFor" id="MA"
							value="MA(Master of Arts)" />
						<label class="sublabel" for="MA">MA(Bachelor of Arts)</label>
					</div>
				</div>
			</div>

			<div class="buttonRow">
				<div class="button">
					<input type="submit" value="Submit">
				</div>
			</div>

		</form:form>
	</div>

</body>
</html>