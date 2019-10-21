function action() {
	var x;
	x = document.getElementById("telephone").value;
	var phoneno = /^\+?([0-9]{2})\)?[-. ]?([0-9]{4})[-. ]?([0-9]{4})$/;
	if (x.match(phoneno)) {
		return true;
	} else {
		alert("Please enter the correct 10-digit phone number format! ");
		return false;
	}
}
