document.addEventListener('DOMContentLoaded', function() {

function l(x) {
  return console.log(x)
}

deviceWidth = window.innerWidth;
desktopPage = document.querySelector('.page-desktop')
mobilePage = document.querySelector('.page-mobile')

// On load
if (deviceWidth < 768) {
  desktopPage.style.display = 'none'
  mobilePage.style.display = ''
}

if (deviceWidth > 768) {
  mobilePage.style.display = 'none'
  desktopPage.style.display = ''
}

// On resize
window.addEventListener ('resize', function(){
  deviceWidth = window.innerWidth;

  if (deviceWidth < 768) {
    desktopPage.style.display = 'none'
    mobilePage.style.display = ''
  }

  if (deviceWidth > 768) {
    mobilePage.style.display = 'none'
    desktopPage.style.display = ''
  }
});

});
