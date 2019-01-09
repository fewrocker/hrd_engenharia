document.addEventListener('DOMContentLoaded', function() {

function l(x) {
  return console.log(x)
}

// O objetivo deste script é ocultar a barra de navegação quando o usuário estiver preenchendo
// o formulario de contato, uma vez que no mobile a navbar em posicao fixed acaba tampando
// e atrapalhando a digitacao

deviceWidth = window.innerWidth;
contactFields = document.getElementsByClassName('contact-form-field')
navbar = document.getElementsByClassName('navbar-hrd')[0]

// On load
Array.prototype.forEach.call(contactFields, function(el) {
  el.addEventListener('focusout', function() {
    if (window.innerWidth < 400) {
      navbar.style.display = ''
    }
  });

  el.addEventListener('focus', function() {
    if (window.innerWidth < 400) {
      navbar.style.display = 'none'
    }
  });
});



});
