document.addEventListener("DOMContentLoaded", () => {
  closeDropdown = (el) => {
    const content = el.parentNode.querySelector(".servico-content")
    content.classList.add("hide");
    const icon = el.parentNode.querySelector("i")
    icon.className = 'fas fa-caret-down closed';
  }
  openDropdown = (el) => {
    const content = el.parentNode.querySelector(".servico-content")
    content.classList.remove("hide");
    const icon = el.parentNode.querySelector("i")
    icon.className = 'fas fa-caret-up open';
  }

  const services = document.querySelectorAll(".servico-header");

  services.forEach((service) => {
    closeDropdown(service);

    service.addEventListener("click", () => {
      if (service.querySelector(".open")) {
        closeDropdown(service);
        return;
      }

      services.forEach((serv) => {
        closeDropdown(serv);
      })

      openDropdown(service);
    })
  })
  const params = (new URL(document.location)).searchParams;
  const openCase = params.get("case");
  if (openCase) {
    const el = document.getElementById(openCase)
    openDropdown(el)
  }
})
