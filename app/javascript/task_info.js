function show (){
  const taskCard = document.querySelectorAll(".task-card");
  taskCard.forEach(function(card){
    card.addEventListener("mouseover",function(){
      const taskInfo = card.querySelector(".task-info");
      taskInfo.setAttribute("style","display:block;");
    })
    card.addEventListener("mouseout",function(){
      const taskInfo = card.querySelector(".task-info");
      taskInfo.removeAttribute("style","display:block;")
    })
  })
}
window.addEventListener("load",show)