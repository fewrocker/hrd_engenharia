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

// This class  detects swipe movements, and runs function swipeFunction with inputs swiped element
// and swipe direction (u, r, l, d) for up, right, left, down
// To run a function on given swipe direction, use:
// (new Swipe('#home-slider')).onLeft(function() { alert('You swiped left.') }).run();
// In this example, the element with id 'home-slider' will be the canvas
// If swiped to the left direction, an alert will apear
class Swipe {
    constructor(element) {
        this.xDown = null;
        this.yDown = null;
        this.element = typeof(element) === 'string' ? document.querySelector(element) : element;

        this.element.addEventListener('touchstart', function(evt) {
            this.xDown = evt.touches[0].clientX;
            this.yDown = evt.touches[0].clientY;
        }.bind(this), false);

    }

    onLeft(callback) {
        this.onLeft = callback;

        return this;
    }

    onRight(callback) {
        this.onRight = callback;

        return this;
    }

    onUp(callback) {
        this.onUp = callback;

        return this;
    }

    onDown(callback) {
        this.onDown = callback;

        return this;
    }

    handleTouchMove(evt) {
        if ( ! this.xDown || ! this.yDown ) {
            return;
        }

        var xUp = evt.touches[0].clientX;
        var yUp = evt.touches[0].clientY;

        this.xDiff = this.xDown - xUp;
        this.yDiff = this.yDown - yUp;

        if ( Math.abs( this.xDiff ) > Math.abs( this.yDiff ) ) { // Most significant.
            if ( this.xDiff > 0 ) {
                this.onLeft();
            } else {
                this.onRight();
            }
        } else {
            if ( this.yDiff > 0 ) {
                this.onUp();
            } else {
                this.onDown();
            }
        }

        // Reset values.
        this.xDown = null;
        this.yDown = null;
    }

    run() {
        this.element.addEventListener('touchmove', function(evt) {
            this.handleTouchMove(evt).bind(this);
        }.bind(this), false);
    }
}

(new Swipe('#home-slider')).onLeft(function() { eventFire(carouselRightArrow, 'click'); }).run();
(new Swipe('#home-slider')).onRight(function() { eventFire(carouselLeftArrow, 'click'); }).run();


});

