const menuIcon = document.getElementById('menu');
const navbar = document.getElementById('navbar');
const groupDiv = document.getElementById('group');
const logo = document.getElementById('logo');
const menuOption = document.getElementById('menu-option');
const logOut = document.getElementById('log-out');
const topline = document.getElementById('tl');
const bottomline = document.getElementById('bl');


menuIcon.addEventListener('click', () => {

	menuIcon.classList.toggle("active");
	navbar.classList.toggle('overlay');


	groupDiv.classList.toggle('hidden');

	menuOption.classList.toggle('hid');
	logOut.classList.toggle('hid');

});

document.addEventListener('DOMContentLoaded', function() {
	var today = new Date();
	var minDate = new Date(today.setDate(today.getDate() + 5));
	var minDateString = minDate.toISOString().split('T')[0];
	document.getElementById('appointment').setAttribute('min', minDateString);
});

function validatePhonenumber(){
	var phoneNumber = document.getElementById('contactno').value;
	var phoneRegex = /^\d{10}$/;
	if (!phoneRegex.test(phoneNumber)) {
		alert('Please enter a valid 10-digit phone number.');
		return false;
	}
	return true;
}