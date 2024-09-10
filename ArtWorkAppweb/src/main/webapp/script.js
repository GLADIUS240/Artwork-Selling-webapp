const menuIcon = document.getElementById('menu');
const navbar = document.getElementById('navbar');
const groupDiv = document.getElementById('group');
const logo=document.getElementById('logo');
const menuOption=document.getElementById('menu-option');
const logOut=document.getElementById('log-out');
menuIcon.addEventListener('click', () => {
    // Toggle the active state of the menu icon
//    menuIcon.classList.toggle('active');
    
    // Toggle the visibility of the navbar
    navbar.classList.toggle('overlay');
	
	groupDiv.classList.toggle('hidden');
	
	logo.classList.toggle('actv');
	menuOption.classList.toggle('hid');
	logOut.classList.toggle('hid');
	console.log("Menu icon clicked"); 
});