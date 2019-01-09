document.addEventListener('DOMContentLoaded', function() {

// Substitutes console.log(x) for l(x)
function l(x) {
  return console.log(x)
}

// Fires given event on given element
function eventFire(el, etype){
  if (el.fireEvent) {
    el.fireEvent('on' + etype);
  } else {
    var evObj = document.createEvent('Events');
    evObj.initEvent(etype, true, false);
    el.dispatchEvent(evObj);
  }
}

// Scrolls to given Y position on given duration
function doScrolling(elementY, duration) {
  var startingY = window.pageYOffset;
  var diff = elementY - startingY;
  var start;

  // Bootstrap our animation - it will get called right before next frame shall be rendered.
  window.requestAnimationFrame(function step(timestamp) {
    if (!start) start = timestamp;
    // Elapsed milliseconds since start of scrolling.
    var time = timestamp - start;
    // Get percent of completion in range [0, 1].
    var percent = Math.min(time / duration, 1);

    window.scrollTo(0, startingY + diff * percent);

    // Proceed with animation as long as we wanted it to.
    if (time < duration) {
      window.requestAnimationFrame(step);
    }
  })
}

swipeElement = document.querySelector('.wrapper-homepage-slideshow')
carousel = document.getElementById('home-slider');
carouselSlides = document.getElementsByClassName('carousel-home-item')
carouselIndicators = document.getElementsByClassName('carousel-indicator')
carouselRightArrow = document.getElementsByClassName('glyphicon-chevron-right')[0]
carouselLeftArrow = document.getElementsByClassName('glyphicon-chevron-left')[0]

// Calcula o inicio do primeiro elemento de conteudo para scrollTo
// Calcula o tamanho do primeiro wrapper
pageStartY = document.querySelector('.wrapper-page').getBoundingClientRect().top;
// Subtrai o tamanho da navbar pois esta em posicao fixed
pageStartY -= document.querySelector('.navbar-hrd').offsetHeight;

l(pageStartY)

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
// This function will cycle slides left and right with user swipe left and right
// If scroll is down, go to page content smoothly
function swipeFunction(element,direction) {
  carousel = document.getElementById('home-slider');

  slideCount = 0
  // Get which slide is active
  Array.prototype.forEach.call(carouselSlides, slide => {
    if (slide.classList.contains('active')) {
      activeSlide = slideCount
    }
    slideCount += 1
  });

  if (direction === 'l') {
    l('l')
    eventFire(carouselRightArrow, 'click');
  } else if (direction === 'r') {
    l('r')
    eventFire(carouselLeftArrow, 'click')
  } else if (direction === 'u') {
    doScrolling(pageStartY, 600)
  }

  // carouselSlides[activeSlide].classList.remove('active')
  // carouselSlides[nextSlide].classList.add('active')

  // carouselIndicators[activeSlide].classList.remove('active')
  // carouselIndicators[nextSlide].classList.add('active')
}

detectswipe('home-slider',swipeFunction);

});

