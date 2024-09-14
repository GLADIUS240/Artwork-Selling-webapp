const menuIcon = document.getElementById('menu');
const navbar = document.getElementById('navbar');
const groupDiv = document.getElementById('group');
const logo=document.getElementById('logo');
const menuOption=document.getElementById('menu-option');
const logOut=document.getElementById('log-out');


const container = document.querySelector(".hero-section"); 
const light = document.querySelector("#lit");

container.addEventListener("mousemove", e => {
    const rect = container.getBoundingClientRect();
    const x = e.clientX - rect.left; 
    const y = e.clientY - rect.top;  

    light.style.setProperty("--x", x + "px");
    light.style.setProperty("--y", y + "px");
});

window.addEventListener("scroll", () => {
    const yScroll = window.scrollY;
    light.style.setProperty("--scroll", yScroll + "px");
});
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