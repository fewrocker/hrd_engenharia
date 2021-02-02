document.addEventListener('DOMContentLoaded', function() {

const caseModal = document.querySelector("#modal-case")
const caseModalBody = caseModal.querySelector(".modal-body")
const caseLinks = document.querySelectorAll(".case-link")
const caseModalHeader = caseModal.querySelector("#case-modal-title")

const getModal = async (name) => {
  const response = await axios.get(`/cases/${name}`)
  caseModalBody.innerHTML = response.data;
}

caseLinks.forEach((link) => {
  link.addEventListener("click", (e) => {
    const title = e.currentTarget.dataset.title
    caseModalHeader.innerHTML = title
    const target = e.currentTarget.dataset.case
    getModal(target)
  })
})

});
