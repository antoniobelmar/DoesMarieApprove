
$(document).ready(function(){
  var id = window.location.pathname.split('/')[2]

  $.get("/api/restaurants/"+ id, function(data){
    $('#single-restaurant').append('<div id=single-restaurant-'+ id + '></div>')
    $('#single-restaurant-' + id).append('<h1>' + data.restaurant.name + '</h1>')
    $('#single-restaurant-' + id).append('<h3>' + data.restaurant.location + '</h3>')
    $('#single-restaurant-' + id).append('<h4>' + data.restaurant.description + '</h4>')
    $('#single-restaurant-' + id).append('<img src="' + data.restaurant.image + '">')

  });

  function createSelectBox() {
    var string = "";
    for (var i=1; i<=10; i++) {
      string += `<option value="${i}">${i}</option>`
    }
    return '<select name="review[rating]">' + string + '</select>';
  }

  $.get("/api/restaurants/" + id + "/reviews",function(data){
    $('#reviews-heading').append('<h2> Reviews </h2>')
    $('#form-page').append('<form action="/api/restaurants/'+ id +'/reviews" method="post">Rating: ' + createSelectBox() + '<input type="text" name="review[comment]" placeholder="Comment"><input type="submit" value="Add Review"></form>')
    data.reviews.forEach(function(review){
      $('#single-restaurant-reviews').append('<h5>' + review.rating + '</h5>')
      $('#single-restaurant-reviews').append('<p>' + review.comment + '</p>')
    });
  })

  $("#Edit").on("click", function(){
    window.location.href = "http://localhost:3000/restaurants/" + id + "/edit"
  })

  $("#Delete").on("click", function(){
    $.ajax("/restaurants/" + id, {type: 'POST', data: {_method: 'DELETE', id: id} } )
  })



});
