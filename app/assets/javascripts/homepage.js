document.addEventListener('DOMContentLoaded', function() {

function l(x) {
  return console.log(x)
}


bannerEndY = document.getElementsByClassName("wrapper-page")[0].offsetTop;

//Navbar reduce size on scroll
navbarComponent = document.getElementsByClassName("navbar-home")[0]
navbarLogo = document.getElementsByClassName("navbar-logo")[0]

navbarHeight = navbarComponent.offsetHeight
logoHeight = navbarLogo.offsetHeight

transitionYMax = 400

sizeFactor = 0.6

window.addEventListener('scroll', function() {
  if (window.pageYOffset >=0 && window.pageYOffset <= transitionYMax) {
    scrollY = window.pageYOffset

    navbarComponent.style.height = Math.floor(navbarHeight*(1-(scrollY/transitionYMax)*(1-sizeFactor))) + 'px'
    navbarLogo.style.height = Math.floor(logoHeight*(1-(scrollY/transitionYMax)*(1-sizeFactor))) + 'px'
  }

  if (window.pageYOffset > transitionYMax) {
    navbarComponent.style.height = Math.floor(navbarHeight * sizeFactor) + 'px'
    navbarLogo.style.height = Math.floor(logoHeight * sizeFactor) + 'px'
  }
});

//Navbar scroll solid-tranparent
navbarComponent = document.getElementsByClassName("navbar-home")[0]

window.addEventListener('scroll', function() {
  if (window.pageYOffset > 400) {
    navbarComponent.classList.add("solid-navbar")
  } else {
    navbarComponent.classList.remove("solid-navbar")
  }
});

// Cards scroll into view
// Options
// Refer to https://scrollrevealjs.org/api/duration.html
var slideUp = {
    distance: '70%',
    origin: 'bottom',
    opacity: 0.5,
    duration: 400
};

solutionCards = document.getElementsByClassName("card-solutions-home")
ScrollReveal().reveal(solutionCards, slideUp);

});
