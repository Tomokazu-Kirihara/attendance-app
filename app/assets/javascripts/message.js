$(function(){

  $(".main").on("mouseover", "td", function(){
    $(this).css({"background-color": "#ffddff"});
  }).on("mouseout", "td", function(){
    $(this).css({"background-color": "#FFFFFF"});
  })

  $('.action-btn').hover(function() {
    $(this).next('p').show();
  }, function(){
    $(this).next('p').hide();
  });

  $('.send-btn').hover(function() {
    $(this).next('p').show();
  }, function(){
    $(this).next('p').hide();
  });

})