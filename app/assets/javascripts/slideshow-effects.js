document.addEventListener('DOMContentLoaded', function() {

function l(x) {
  return console.log(x)
}


//Animation: carousel captions slide on scroll
//Only on desktop because it causes lag on mobile
if (deviceWidth > 768) {
  slideTitles = document.getElementsByClassName("carousel-slide-title")
  slideButtons = document.getElementsByClassName("carousel-slide-button")

  translateMax = screen.width / 0.8
  translateYMax = document.getElementsByClassName("carousel")[0].offsetHeight
  translateGap = translateMax / translateYMax
  l(translateGap)

  window.addEventListener('scroll', function() {
    if (window.pageYOffset >=0 && window.pageYOffset <= translateYMax) {
      scrollY = window.pageYOffset

      Array.prototype.forEach.call(slideTitles, function(el) {
        el.style.right = scrollY * translateGap + 'px'
      });
      Array.prototype.forEach.call(slideButtons, function(el) {
        el.style.left = scrollY * translateGap + 'px'
      });

    }

  });
}





});
