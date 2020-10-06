function check() {
  const tasks = document.querySelectorAll(".task-card");
  tasks.forEach(function (task) {
    task.addEventListener("click", () => {
      const taskId = task.getAttribute("data-id");
      const boardId = task.getAttribute("board-id");
      const XHR = new XMLHttpRequest();
      XHR.open("GET", `/boards/${boardId}/tasks/${taskId}`, true);
      XHR.responseType = "json";
      XHR.send();
      XHR.onload = () => {
        const item = XHR.response.task;
        if (item.check === true) {
          task.setAttribute("data-check","true");
        }else if (item.check === false){
          task.removeAttribute("data-check")
        }
      };
    });
  });
}
window.addEventListener("load", check);