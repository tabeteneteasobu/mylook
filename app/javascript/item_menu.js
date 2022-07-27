window.addEventListener('load', function(){
  console.log('item_menu.jsが読み込まれています');
  const menu = document.getElementById("item_icon");
  const pullDownMenu = document.getElementById("menu1-pull-down");

  menu.addEventListener('click', function() {
    console.log('プルダウンが読み込まれています');
    if (pullDownMenu.getAttribute("style") == "display:block;") {
      pullDownMenu.removeAttribute("style", "display:block;");
    } 
    else {
      pullDownMenu.setAttribute("style", "display:block;");
    }
  });
});
