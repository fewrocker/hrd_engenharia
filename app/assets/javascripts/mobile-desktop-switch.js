document.addEventListener("DOMContentLoaded", function () {
  function l(x) {
    return console.log(x);
  }

  if (document.querySelectorAll(".page-desktop")) {
    deviceWidth = window.innerWidth;
    desktopPages = document.querySelectorAll(".page-desktop");
    mobilePages = document.querySelectorAll(".page-mobile");

    if (deviceWidth < 768) {
      desktopPages.forEach((page) => {
        page.style.display = "none";
      });
      mobilePages.forEach((page) => {
        page.style.display = "";
      });
    }
    if (deviceWidth >= 768) {
      desktopPages.forEach((page) => {
        page.style.display = "";
      });
      mobilePages.forEach((page) => {
        page.style.display = "none";
      });
    }

    // On load
    if (deviceWidth > 768) {
      mobilePages.forEach((mobilePage) => {
        mobilePage.style.display = "none";
      });
      desktopPages.forEach((desktopPage) => {
        desktopPage.style.display = "";
      });
    }

    // On resize
    window.addEventListener("resize", function () {
      deviceWidth = window.innerWidth;

      if (deviceWidth < 768) {
        desktopPage.style.display = "none";
        mobilePage.style.display = "";
      }

      if (deviceWidth > 768) {
        mobilePage.style.display = "none";
        desktopPage.style.display = "";
      }
    });
  } else {
  }
});
