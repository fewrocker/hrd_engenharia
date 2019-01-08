document.addEventListener('DOMContentLoaded', function() {

function l(x) {
  return console.log(x)
}

swipeElement = document.querySelector('.wrapper-homepage-slideshow')
carousel = document.getElementById('home-slider');
carouselSlides = document.getElementsByClassName('carousel-home-item')
carouselIndicators = document.getElementsByClassName('carousel-indicator')

l(carouselSlides)


// This function  detects swipe movements, and runs function swipeFunction with inputs swiped element
// and swipe direction (u, r, l, d) for up, right, left, down
function detectswipe(el,func) {
      swipe_det = new Object();
      swipe_det.sX = 0;
      swipe_det.sY = 0;
      swipe_det.eX = 0;
      swipe_det.eY = 0;
      var min_x = 20;  //min x swipe for horizontal swipe
      var max_x = 40;  //max x difference for vertical swipe
      var min_y = 40;  //min y swipe for vertical swipe
      var max_y = 50;  //max y difference for horizontal swipe
      var direc = "";
      ele = document.getElementById(el);
      ele.addEventListener('touchstart',function(e){
        var t = e.touches[0];
        swipe_det.sX = t.screenX;
        swipe_det.sY = t.screenY;
      },false);
      ele.addEventListener('touchmove',function(e){
        e.preventDefault();
        var t = e.touches[0];
        swipe_det.eX = t.screenX;
        swipe_det.eY = t.screenY;
      },false);
      ele.addEventListener('touchend',function(e){
        //horizontal detection
        if ((((swipe_det.eX - min_x > swipe_det.sX) || (swipe_det.eX + min_x < swipe_det.sX)) && ((swipe_det.eY < swipe_det.sY + max_y) && (swipe_det.sY > swipe_det.eY - max_y)))) {
          if(swipe_det.eX > swipe_det.sX) direc = "r";
          else direc = "l";
        }
        //vertical detection
        if ((((swipe_det.eY - min_y > swipe_det.sY) || (swipe_det.eY + min_y < swipe_det.sY)) && ((swipe_det.eX < swipe_det.sX + max_x) && (swipe_det.sX > swipe_det.eX - max_x)))) {
          if(swipe_det.eY > swipe_det.sY) direc = "d";
          else direc = "u";
        }

        if (direc != "") {
          if(typeof func == 'function') func(el,direc);
        }
        direc = "";
      },false);
    }

// Obs: carousel element must be the one with class .carousel
function swipeFunction(element,direction) {
  // if (direction === 'l') {
  //   carousel.carousel("prev");
  //   l('go to next')
  // }
  // if (direction === 'r') {
  //   carousel.carousel("next");
  //   l('go to prev')
  // }

  carousel = document.getElementById('home-slider');
  carousel.dataInterval = 1000
  l(carousel)

  slideCount = 0
  // Get which slide is active
  Array.prototype.forEach.call(carouselSlides, slide => {
    if (slide.classList.contains('active')) {
      activeSlide = slideCount
    }
    slideCount += 1
  });

  l(activeSlide)

  // Get which slide will become active
  if (activeSlide === carouselSlides.length - 1) {
    nextSlide = 0
  } else {
    nextSlide = activeSlide + 1
  }

  carouselSlides[activeSlide].classList.remove('active')
  carouselSlides[nextSlide].classList.add('active')

  carouselIndicators[activeSlide].classList.remove('active')
  carouselIndicators[nextSlide].classList.add('active')
}

detectswipe('home-slider',swipeFunction);

});

