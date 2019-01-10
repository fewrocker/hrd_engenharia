document.addEventListener('DOMContentLoaded', function() {

function l(x) {
  return console.log(x)
}

bannerFirstLine = document.getElementsByClassName("main-title-text-line")[0]
bannerSecondLine = document.getElementsByClassName("main-title-text-line")[1]
bannerThirdLine = document.getElementsByClassName("main-title-text-line")[2]

bannerEndY = document.getElementsByClassName("wrapper-page")[0].offsetTop;

body = document.getElementsByTagName("body")[0]

//Navbar scroll solid-tranparent
navbarComponent = document.getElementsByClassName("navbar-home")[0]

window.addEventListener('scroll', function() {
  if (window.pageYOffset > bannerEndY - 300) {
    navbarComponent.classList.add("solid-navbar")
  } else {
    navbarComponent.classList.remove("solid-navbar")
  }
});

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

//Three title lines appear
setTimeout(function(){
  bannerFirstLine.classList.add("main-title-text-line-appear")
  setTimeout(function(){
    bannerSecondLine.classList.add("main-title-text-line-appear")
    setTimeout(function(){
      bannerThirdLine.classList.add("main-title-text-line-appear")
    }, 550);
  }, 300);
}, 300);


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
