document.addEventListener('DOMContentLoaded', function() {

// Substitutes console.log(x) for l(x)
function l(x) {
  return console.log(x)
}


// Fade in first slide
captions = document.getElementsByClassName('carousel-caption')
captions[0].style.opacity = '0'

// Makes specific element fade in on given conditions
function fadein(el) {
  opc_min = 0
  opc_max = 1
  time = 1000
  timetick = 10
  gap = (opc_max - opc_min)/(time / timetick)
  opc_now = 0
  animation_complete = false

  var animation_progress = setInterval(function(){
    opc_now += gap
    el.style.opacity = opc_now.toString()
    if (opc_now > 1) {
      clearInterval(animation_progress);
      Array.prototype.forEach.call(captions, function(caption) {
        caption.classList.add('carousel-caption-opc')
      });
    }
  }, timetick);

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

// First element fade in
setTimeout(function(){
  fadein(captions[0])

}, 200);



});





