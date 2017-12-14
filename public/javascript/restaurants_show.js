
$(document).ready(function(){
  var id = window.location.pathname.split('/')[2]

  $.get("/api/restaurants/"+ id, function(data){
    $('#single-restaurant').append('<div id=single-restaurant-'+ id + '></div>')
    $('#single-restaurant-' + id).append('<h1>' + data.restaurant.name + '</h1>')
    $('#single-restaurant-' + id).append('<h3>' + data.restaurant.location + '</h3>')
    $('#single-restaurant-' + id).append('<h4>' + data.restaurant.description + '</h4>')
    $('#single-restaurant-' + id).append('<img src="' + data.restaurant.image + '">')
  });

  $.get("/api/restaurants/" + id + "/reviews",function(data){
    $('#reviews-heading').append('<h2> Reviews </h2>')
    $('#form-page').append('<form action="/api/restaurants/'+ id +'/reviews" method="post"><input type="text" name="review[rating]"><input type="text" name="review[comment]"><input type="submit" value="Add Review"></form>')
    data.reviews.forEach(function(review){
      $('#single-restaurant-reviews').append('<h5>' + review.rating + '</h5>')
      $('#single-restaurant-reviews').append('<p>' + review.comment + '</p>')
    });
  })

  $("#Edit").on("click", function(){
    window.location.pathname = "/restaurants/" + id + "/edit"
  })

  $("#Delete").on("click", function(){
    $.ajax("/restaurants/" + id, {type: 'DELETE', data: {id: id} })
  })

});
