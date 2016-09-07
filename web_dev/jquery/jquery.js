console.log("This is working!")

$(document).ready(function(){

  $('.nav-item').hover(function(){
    $(this).children('ul').stop(true,false,true).slideToggle(300);
  });

  $('#kaocolorer').click(function(){
    $('.kaomoji').css("color","red")
  });

  $(":button").click(function(){
    alert("Congratulations, you pushed a thing that did a thing!");
    $(this).after(" ˭̡̞(◞⁎˃ᆺ˂)◞*✰")
  })

});