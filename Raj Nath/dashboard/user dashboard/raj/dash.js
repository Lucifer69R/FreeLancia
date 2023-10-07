const body = document.querySelector("body"),
      modeToggle = body.querySelector(".mode-toggle");
      sidebar = body.querySelector("nav");
      sidebarToggle = body.querySelector(".sidebar-toggle");

let getMode = localStorage.getItem("mode");
if(getMode && getMode ==="dark"){
    body.classList.toggle("dark");
}

let getStatus = localStorage.getItem("status");
if(getStatus && getStatus ==="close"){
    sidebar.classList.toggle("close");
}

modeToggle.addEventListener("click", () =>{
    body.classList.toggle("dark");
    if(body.classList.contains("dark")){
        localStorage.setItem("mode", "dark");
    }else{
        localStorage.setItem("mode", "light");
    }
});

sidebarToggle.addEventListener("click", () => {
    sidebar.classList.toggle("close");
    if(sidebar.classList.contains("close")){
        localStorage.setItem("status", "close");
    }else{
        localStorage.setItem("status", "open");
    }
})



// variable
let modal = document.querySelector(".modal-container");
let btn = document.getElementById("lg");
let closeBtn = document.querySelectorAll(".btn");
// EventListener
btn.addEventListener("click", () => {
  modal.classList.add("show");
});

closeBtn.forEach((eachBtn) => {
  eachBtn.addEventListener("click", () => {
    modal.classList.remove("show");
  });
});

window.onclick = function (event) {
  if (event.target == modal) {
    modal.classList.remove("show");
  }
};


