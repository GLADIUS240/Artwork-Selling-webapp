const menuIcon = document.getElementById('menu');
const navbar = document.getElementById('navbar');
const groupDiv = document.getElementById('group');
const logo=document.getElementById('logo');
const menuOption=document.getElementById('menu-option');
const logOut=document.getElementById('log-out');
const topline=document.getElementById('tl');
const bottomline=document.getElementById('bl');


menuIcon.addEventListener('click', () => {
	
    menuIcon.classList.toggle("active");
    navbar.classList.toggle('overlay');
	
	
	groupDiv.classList.toggle('hidden');
	
	menuOption.classList.toggle('hid');
	logOut.classList.toggle('hid');
	
});