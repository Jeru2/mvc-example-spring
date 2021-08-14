function validate() {
	var name = document.getElementById("name").value;
	if (name == '') {
		alert('Please enter a valid name.');
		return false;
	} else {
		return true;
	}
}

$(document).ready(function(){
    $('.qualificationCheckbox').click(function() {
        $('.qualificationCheckbox').not(this).prop('checked', false);
    });
});