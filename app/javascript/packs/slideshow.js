console.log("HOLAAAAAAAAAAAAAAAa");

window.addEventListener("DOMContentLoaded", (_event) => {
  console.log("HEEEEEEEEEEEEEEEEEEEERE");
  var slideIndex = 1;
  showSlides(slideIndex);

  // Next/previous controls
  window.plusSlides = function (n) {
    showSlides((slideIndex += n));
  };

  // Thumbnail image controls

  function showSlides(n) {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    if (n > slides.length) {
      slideIndex = 1;
    }
    if (n < 1) {
      slideIndex = slides.length;
    }
    for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
    }
    slides[slideIndex - 1].style.display = "block";
  }
});

console.log("ADIOOOOOOOOOOOOOOOOOOOOOOOS");
