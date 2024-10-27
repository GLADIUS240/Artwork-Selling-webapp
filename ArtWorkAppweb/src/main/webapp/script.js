const menuIcon = document.getElementById('menu');
const navbar = document.getElementById('navbar');
const groupDiv = document.getElementById('group');
const logo=document.getElementById('logo');
const menuOption=document.getElementById('menu-option');
const logOut=document.getElementById('log-out');
const topline=document.getElementById('tl');
const bottomline=document.getElementById('bl');


const container = document.querySelector(".hero-section"); 
const light = document.querySelector("#lit");

if (window.matchMedia('(hover: hover) and (pointer: fine)').matches) {
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

}
menuIcon.addEventListener('click', () => {
    // Toggle the active state of the menu icon
	
    menuIcon.classList.toggle("active");
//	topline.style.height="2px";
//	topline.style.transform="rotate(45deg)";
//	bottomline.style.height="2px";
//	bottomline.style.textTransform="rotate(-45deg)";

    // Toggle the visibility of the navbar
    navbar.classList.toggle('overlay');
	
	
	groupDiv.classList.toggle('hidden');
	
	menuOption.classList.toggle('hid');
	logOut.classList.toggle('hid');
	
});