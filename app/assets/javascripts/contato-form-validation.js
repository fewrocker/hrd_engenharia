//O objetivo deste codigo é fazer a validação dos campos do formulário de contato

document.addEventListener('DOMContentLoaded', function() {

function l(x) {
  return console.log(x)
}

function validateForm() {
  var nome = document.forms["contact-form"]["nome"].value;
  if (x == "") {
    l('oi')
    alert("Name must be filled out");
    return false;
  }
}


});
