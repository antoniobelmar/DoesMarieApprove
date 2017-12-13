
$(document).ready(function(){
  var id = window.location.pathname.split('/')[2]

  $.get("/api/restaurants/"+ id, function(data){
    $('#single-restaurant').append('<div id=restaurant-'+ id + '></div>')
    $('#restaurant-' + id).append('<h1>' + data.restaurant.name + '</h1>')
    $('#restaurant-' + id).append('<h3>' + data.restaurant.location + '</h3>')
    $('#restaurant-' + id).append('<h4>' + data.restaurant.description + '</h4>')
    $('#restaurant-' + id).append('<img src="' + data.restaurant.image + '">')
  })

  $('#form-page').append('<form action="/api/restaurants/'+ id +'/reviews" method="post"><input type="text" name="review[rating]"><input type="text" name="review[comment]"><input type="submit" value="Add Review"></form>')

});
