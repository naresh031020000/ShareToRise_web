/**
 * 
 */

 let edit_button = document.getElementById("edit_button")

edit_button.addEventListener("click", e => {

  e.preventDefault()

  first_name.removeAttribute("disabled", "")
  last_name.removeAttribute("disabled", "")

})