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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/app.js"></script>
<title>Spring Boot</title>
</head>
<body>
	<h1>Student Registration Form</h1>

	
	<div class="form">
		<form:form action="success" modelAttribute="student" onsubmit="return validate()">
			<div class="row">
				<div class="label">First Name</div>
				<div class="field">
					<form:input path="firstName" />
				</div>
			</div>
			<div class="row">
				<div class="label">Last Name</div>
				<div class="field">
					<form:input path="lastName" />
				</div>
			</div>
			<div class="row">
				<div class="label">Email ID</div>
				<div class="field">
					<form:input path="email" />
				</div>
			</div>
			<div class="row">
				<div class="label">Mobile number</div>
				<div class="field">
					<form:input path="mobile" />
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
					<form:input path="dateOfBirth"/>
				</div>
			</div>
			<div class="row">
				<div class="label">Address</div>
				<div class="field">
					<textarea rows="6" cols="20" name="Address"></textarea>
				</div>
			</div>
			<div class="row">
				<div class="label">City</div>
				<div class="field">
					<form:input path="city" />
				</div>
			</div>
			<div class="row">
				<div class="label">Pin Code</div>
				<div class="field">
					<form:input path="pincode" />
				</div>
			</div>
			<div class="row">
				<div class="label">State</div>
				<div class="field">
					<form:input path="state" />
				</div>
			</div>
			<div class="row">
				<div class="label">Country</div>
				<div class="field">
					<form:input path="country" />
				</div>
			</div>

			<div class="row">
				<div class="label">Hobbies</div>
				<div class="field">
					<form:checkbox path="hobbyNames" id="drawingCheckbox" value="Drawing" />
					<label class="sublabel" for="drawingCheckbox">Drawing</label>
					<form:checkbox path="hobbyNames" id="singingCheckbox" value="Singing" />
					<label class="sublabel" for="singingCheckbox">Singing</label>
					<form:checkbox path="hobbyNames" id="dancingCheckbox" value="Dancing" />
					<label class="sublabel" for="dancingCheckbox">Dancing</label>
					<form:checkbox path="hobbyNames" id="sketchingCheckbox" value="Sketching" />
					<label class="sublabel" for="sketchingCheckbox">Sketching</label>
					<input type="checkbox" id="othersCheckbox" />
					<label class="sublabel" for="othersCheckbox">Others</label>
					<form:input path="hobbyNames" />
				</div>
			</div>

			<div class="row">
				<div class="label">Qualification</div>
				<div class="field verticalStack">
					<div class="horizontalCheckboxLabelGroup">
						<form:checkbox id="highSchoolCheckbox" cssClass="qualificationCheckbox" path="qualification"
							value="High School(10th)" />
						<label class="sublabel" for="highSchoolCheckbox">High School(10th)</label>
					</div>
					<div class="horizontalCheckboxLabelGroup">
						<form:checkbox id="higherSchoolCheckbox" cssClass="qualificationCheckbox" path="qualification"
							value="Higher School(12th)" />
						<label class="sublabel" for="higherSchoolCheckbox">Higher School(12th)</label>
					</div>
					<div class="horizontalCheckboxLabelGroup">
						<form:checkbox id="graduationCheckbox" cssClass="qualificationCheckbox" path="qualification"
							value="Graduation(Bachelors)" />
						<label class="sublabel" for="graduationCheckbox">Graduation(Bachelors)</label>
					</div>
					<div class="horizontalCheckboxLabelGroup">
						<form:checkbox id="postGraduationCheckbox" cssClass="qualificationCheckbox" path="qualification"
							value="Post Graduation(Masters)" />
						<label class="sublabel" for="postGraduationCheckbox">Post
							Graduation(Masters)</label>
					</div>
					<div class="horizontalCheckboxLabelGroup">
						<form:checkbox id="phdCheckbox" cssClass="qualificationCheckbox" path="qualification"
							value="PhD(Doctorate)" />
						<label class="sublabel" for="phdCheckbox">PhD(Doctorate)</label>
					</div>
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
						<form:radiobutton path="courseAppliedFor" id="B.Com"
							value="B.Com(Bachelor of Commerce)" />
						<label class="sublabel" for="B.Com">B.Com(Bachelor of
							Commerce)</label>
					</div>
					<div>
						<form:radiobutton path="courseAppliedFor" id="B.Sc"
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
						<form:radiobutton path="courseAppliedFor" id="M.Com"
							value="M.Com(Master of Commerce)" />
						<label class="sublabel" for="M.Com">M.Com(Bachelor of
							Commerce)</label>
					</div>
					<div>
						<form:radiobutton path="courseAppliedFor" id="M.Sc"
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

				<div class="button">
					<input type="button" value="Reset">
				</div>
			</div>

		</form:form>
	</div>

</body>
</html>