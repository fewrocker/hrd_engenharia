document.addEventListener('DOMContentLoaded', function() {

function l(x) {
  return console.log(x)
}

deviceWidth = window.innerWidth;
desktopPage = document.querySelector('.page-desktop')
mobilePage = document.querySelector('.page-mobile')

// On load
if (deviceWidth < 400) {
  desktopPage.style.display = 'none'
  mobilePage.style.display = ''
}

if (deviceWidth > 400) {
  mobilePage.style.display = 'none'
  desktopPage.style.display = ''
}

// On resize
window.addEventListener ('resize', function(){
  deviceWidth = window.innerWidth;
  l(deviceWidth)

  if (deviceWidth < 400) {
    desktopPage.style.display = 'none'
    mobilePage.style.display = ''
  }

  if (deviceWidth > 400) {
    mobilePage.style.display = 'none'
    desktopPage.style.display = ''
  }
});

});
