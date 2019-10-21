/**
 * @author LE T.HUNG
 * @creatdate Oct 27, 2018
 * @modifieddate Oct 27, 2018
 * @content check phone number
 */
function checkPhone() {
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

function validateEmail() {
	var email;
	email = document.getElementById("email").value;
	var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	if (re.test(String(email).toLowerCase())) {
		return true;
	} else {
		alert("Please enter the correct email ! ");
		return false;
	}
}

function validateGender() {
	var gender;
	gender = document.getElementById("gender").value;
	if (gender != "male" && gender != "female") {
		alert("Please enter gender is male or female !");
		return false;
	}
	return true;
}
function checkmaxsize() {
	var firstName;
	var lastName;
	var fullName;
	var discription;
	var skill;
	var possition;

	firstName = document.getElementById("firstname").value;
	lastName = document.getElementById("lastname").value;
	fullName = document.getElementById("fullname").value;
	discription = document.getElementById("discription").value;
	skill = document.getElementById("skill").value;
	possition = document.getElementById("possition").value;

	if (firstName.length > 50 || lastName.length > 50) {
		alert("max size of first name and last name is 50 character !");
		return false;
	}
	if (fullName.length > 100 || skill.length > 100
			|| possition.value.length > 100) {
		alert("max size of full name , skill and possition is 100 character !");
		return false;
	}
	if (discription.length > 500) {
		alert("max size of discription is 500 character !");
		return false;
	}
	return true;
}
function checkmaxdepartment() {
	var discription;
	discription = document.getElementById("discription").value;
	if (discription.length > 255) {
		alert("max size of description is 255 character !");
		return false;
	}
	return true;
}
function checkemailissame() {
	var email;
	var accounName;
	email = document.getElementById("email").value;
	accounName = document.getElementById("").value;
	if (email != accounName) {
		alert("email của staff phải giống với account name !");
		return false;
	} else {
		return true;
	}
}
function validatedate() {
	var startDate = document.getElementById("dateCreate").value;
	var endDate = document.getElementById("deadlineDate").value;
	var finishDate = document.getElementById("finishDate").value;

	if ((Date.parse(endDate) <= Date.parse(startDate))) {
		alert("Thời gian deadline phải sau thời gian dateCreate !");
		return false;
	}
	if ((Date.parse(finishDate) <= Date.parse(startDate))) {
		alert("Thời gian finishdate phải sau thời gian dateCreate !");
		return false;
	}
	return true;
}

function validatedateproject() {
	var create = document.getElementById("createDate").value;
	var start = document.getElementById("startDate").value;
	var dateline = document.getElementById("deadlineDate").value;
	var finishDate = document.getElementById("finishDate").value;

	if ((Date.parse(start) <= Date.parse(create))) {
		alert("Thời gian bắt đầu dự án phải sau thời gian tạo dự án !");
		return false;
	}
	if ((Date.parse(dateline) <= Date.parse(start))) {
		alert("Thời gian dateline phải sau thời gian start dự án !");
		return false;
	}
	if ((Date.parse(finishDate) <= Date.parse(start))) {
		alert("Thời gian finish date phải sau thời gian start dự án !");
		return false;
	}
	return true;
}