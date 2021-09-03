$(function() {
  if($('#check-edit-wifi').prop('checked')){
    $('.edit-check-wifi').toggleClass('isActive');
  }else{$(this).css("color","white")}
  
  $('.edit-check-wifi').on('click',function(){
  $('.edit-check-wifi').toggleClass('isActive');
  })
})