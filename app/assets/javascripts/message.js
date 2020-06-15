$(function(){
  $('input:checkbox').change(function() {
    var cnt = $('table input:checkbox:checked').length;
    $('.main__main-ber__check-box__name-check__member-number__check-number').text('出席確認者数：' + cnt + '名');
  }).trigger('change');

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