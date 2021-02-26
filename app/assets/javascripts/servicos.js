document.addEventListener("DOMContentLoaded", () => {
  const services = document.querySelectorAll(".servico-header");

  services.forEach((service) => {
    service.addEventListener("click", () => {
      services.forEach((serv) => {
        if (serv === service) return;

        const content = serv.parentNode.querySelector(".servico-content")
        if (content) {
          content.classList.add("hide");
          const icon = service.parentNode.querySelector("i")
          icon.className = "fas fa-caret-down";
        }
      })

      const content = service.parentNode.querySelector(".servico-content")
      if (content) {
        content.classList.toggle("hide");
        const icon = service.parentNode.querySelector("i")
        const newClass = (icon.className.includes("down") ? "fas fa-caret-up" : "fas fa-caret-down")
        icon.className = newClass;
      }
    })
  })
  const params = (new URL(document.location)).searchParams;
  const openCase = params.get("case");
  if (openCase) {
    const content = document.getElementById(openCase)  
    content.classList.toggle("hide");
    const icon = service.parentNode.querySelector("i")
    const newClass = (icon.className.includes("down") ? "fas fa-caret-up" : "fas fa-caret-down")
    icon.className = newClass;
  }
})
