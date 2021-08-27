window.addEventListener('load', function(){

  const pullDownButton = document.getElementById("favorite")
  
  pullDownButton.addEventListener('mouseover', function(){
    this.setAttribute("style", "color: white;")
  })

  pullDownButton.addEventListener('mouseout', function(){
    this.removeAttribute("style", "color: gray;")
  })

  pullDownButton.addEventListener('click', function() {
    this.style.color = "gray";
  })
})