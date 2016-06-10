$(document).ready(function() {
  $('#rNumber').click(function(){
    var number = 1 + Math.floor(Math.random() * 6);
    $('#results').append("<li>" + number + "</li>");
  });
  $('#deleteAll').click(function(){
    $('li').remove();
  });
  $('#deleteOldest').click(function(){
    $('#results li:first-child').remove();
  })
});