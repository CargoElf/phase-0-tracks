$(document).ready(function() {
  var clicks = 0
  $('#rNumber').click(function(){
    var number = 1 + Math.floor(Math.random() * 6);
    clicks += 1;
    $('#results').append("<li id=" + clicks + ">" + number + "</li>");
    $('#' + clicks).css('font-size', clicks/5 + 'em');
  });
  $('#deleteAll').click(function(){
    $('li').remove();
    clicks = 0;
  });
  $('#deleteNewest').click(function(){
    clicks -= 1;
    $('#results li:last-child').remove();
  });
});