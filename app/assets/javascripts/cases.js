document.addEventListener("DOMContentLoaded", () => {
  const caseSearchInputs = document.querySelectorAll(".case-search-input");

  const performCaseSearch = (query, searchInput) => {
    const caseList = searchInput.parentNode.querySelector(".case-list");

    if (!query.length) {
      caseList.innerHTML = "";
      caseList.classList.add("hide");
    }

    if (query.length < 2) return;

    clearTimeout(this.timeout);
    this.timeout = setTimeout(async () => {
      const response = await axios.get(
        `${window.location.origin}/cases/search?query=${query}`
      );

      caseList.innerHTML = "";
      response.data.forEach((caseItem) => {
        caseList.insertAdjacentHTML(
          "beforeend",
          `<div class="each-case"><p class="fw-700 fs-18">${
            caseItem.title
          }</p><p class="fs-16">${caseItem.content.substring(0, 150)}...</p>
          <a href="#" data-toggle="modal" data-target="#modal-case" class="case-link" data-case="${
            caseItem.file_name
          }" data-title="${caseItem.title}">Ver Case</a>
          </div>`
        );
      });
      caseList.classList.remove("hide");
      if (!response.data.length) {
        caseList.insertAdjacentHTML(
          "afterbegin",
          `<p>Nenhum case encontrado.</p>`
        );
      }

      const caseModal = document.querySelector("#modal-case");
      const caseModalBody = caseModal.querySelector(".modal-body");
      const caseLinks = document.querySelectorAll(".case-link");
      const caseModalHeader = caseModal.querySelector("#case-modal-title");

      const getModal = async (name) => {
        caseModalBody.innerHTML = "Carregando informações...";
        const response = await axios.get(`/cases/${name}`);
        caseModalBody.innerHTML = response.data;
      };

      caseLinks.forEach((link) => {
        link.addEventListener("click", (e) => {
          const title = e.currentTarget.dataset.title;
          caseModalHeader.innerHTML = title;
          const target = e.currentTarget.dataset.case;
          getModal(target);
        });
      });
    }, 200);
  };

  caseSearchInputs.forEach((caseSearchInput) => {
    const caseList = caseSearchInput.parentNode.querySelector(".case-list");

    caseSearchInput.addEventListener("input", async (e) => {
      performCaseSearch(e.target.value, caseSearchInput);
    });
    caseSearchInput.addEventListener("blur", () => {
      setTimeout(() => {
        caseList.innerHTML = "";
        caseList.classList.add("hide");
      }, 200);
    });
    caseSearchInput.addEventListener("focus", () => {
      performCaseSearch(caseSearchInput.value, caseSearchInput);
    });
  });

  closeDropdown = (el) => {
    const content = el.parentNode.querySelector(".servico-content");
    content.classList.add("hide");
    const icon = el.parentNode.querySelector("i");
    icon.className = "fas fa-caret-down closed";
  };
  openDropdown = (el) => {
    const content = el.parentNode.querySelector(".servico-content");
    content.classList.remove("hide");
    const icon = el.parentNode.querySelector("i");
    icon.className = "fas fa-caret-up open";
  };

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
      });

      openDropdown(service);
    });
  });
  const params = new URL(document.location).searchParams;
  const openCase = params.get("case");
  if (openCase) {
    const el = document.getElementById(openCase);
    openDropdown(el);
  }
});
