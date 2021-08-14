function validate() {
	var valid = true,
		errorMessage = "";
	let regex = /^([_\-\.0-9a-zA-Z]+)@([_\-\.0-9a-zA-Z]+)\.([a-zA-Z]){2,7}$/;
	if ($('#firstName').val() == '') {
		errorMessage = "First name cannot be blank \n";
		valid = false;
	}

	if ($('#lastName').val() == '') {
		errorMessage += "Last name cannot be blank\n";
		valid = false;
	}

	if (!$('#email').val().match(regex)) {
		errorMessage += "Enter a valid email\n";
		valid = false;
	}
	if ($('#mobile').val() == '' || /^\d*$/.test($('#mobile').val()) == false || $('#mobile').val().length != 10) {
		errorMessage += "Enter a valid mobile number (10 digits)\n";
		valid = false;
	}
	if (!$('#optionMale').is(':checked') && !$('#optionFemale').is(':checked')) {
		errorMessage += "Please select a gender\n";
		valid = false;
	}
	if (!isDate($('#dob').val())) {
		errorMessage += "Enter a valid date for date of birth\n";
		valid = false;
	}
	if ($('#address').val() == '') {
		errorMessage += "Address cannot be empty\n";
		valid = false;
	}
	if ($('#city').val() == '') {
		errorMessage += "City cannot be empty\n";
		valid = false;
	}
	if ($('#pincode').val() == '' || $('#pincode').val().length != 6 || /^\d*$/.test($('#pincode').val()) == false) {
		errorMessage += "Enter a valid pincode (6 digits)\n";
		valid = false;
	}
	if ($('#state').val() == '') {
		errorMessage += "State cannot be empty\n";
		valid = false;
	}
	if ($('#country').val() == '') {
		errorMessage += "Country cannot be empty\n";
		$('#country').after("<div> Error message </div>"); 
		$('#country').fadeOut();
		$('#country').fadeIn();
		$('#country').animate({borderBottomWidth: "12px"});
		$('#country').animate({borderBottomWidth: "1px"});
		valid = false;
	}
	if (!$('#BCA').is(':checked') && !$('#BCom').is(':checked') && !$('#BSc').is(':checked') && !$('#BA').is(':checked') && !$('#MCA').is(':checked') && !$('#MCom').is(':checked') && !$('#MSc').is(':checked') && !$('#MA').is(':checked')) {
		errorMessage += "Please select a course\n";
		valid = false;
	}
	if (!valid && errorMessage.length > 0) {
		alert(errorMessage);
		return false;
	}
}
function isDate(txtDate) {
	var currVal = txtDate;
	if (currVal == '')
		return false;

	var dateRegex = /^(\d{1,2})(\/|-)(\d{1,2})(\/|-)(\d{4})$/;
	var dtArray = currVal.match(dateRegex);

	if (dtArray == null)
		return false;

	//Checks for dd/mm/yyyy format.
	dayValue = dtArray[1];
	monthValue = dtArray[3];
	yearValue = dtArray[5];

	if (monthValue < 1 || monthValue > 12)
		return false;
	else if (dayValue < 1 || dayValue > 31)
		return false;
	else if ((monthValue == 4 || monthValue == 6 || monthValue == 9 || monthValue == 11) && dayValue == 31)
		return false;
	else if (monthValue == 2) {
		var isleap = (yearValue % 4 == 0 && (yearValue % 100 != 0 || yearValue % 400 == 0));
		if (dayValue > 29 || (dayValue == 29 && !isleap))
			return false;
	}
	return true;
}