var slideIndex = 1;

window.onload = showSlides;

showSlides(slideIndex);

// Cambio della vista
function plusSlides(n) {
	showSlides(slideIndex += n);
}

// Controlli per l'anteprima della vista corrente
function currentSlide(n) {
	showSlides(slideIndex = n);
}


//Funzione principale
function showSlides(n) {
	var i;
	var slides = document.getElementsByClassName("mySlides");
	var dots = document.getElementsByClassName("demo");
	var captionText = document.getElementById("caption");

	if (n > slides.length) {slideIndex = 1}
	if (n < 1) {slideIndex = slides.length}

	for (i = 0; i < slides.length; i++) {
		slides[i].style.display = "none";
	}
	for (i = 0; i < dots.length; i++) {
		dots[i].className = dots[i].className.replace(" active", "");
	}
	
	slides[slideIndex-1].style.display = "block";
	
	dots[slideIndex-1].className += " active";
	captionText.innerHTML = dots[slideIndex-1].alt;
}



