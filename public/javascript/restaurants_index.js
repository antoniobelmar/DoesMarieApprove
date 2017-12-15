$(document).ready(function(){

  $.get("/api/restaurants", function(data){
    data.restaurants.forEach(function(restaurant){
       $('#restaurants').append('<div id=restaurant-' + restaurant.id + '></div>')
       $('#restaurant-' + restaurant.id).append('<a href="/restaurants/'+ restaurant.id +'"><h1>' + restaurant.name + '</h1></a>')
       $('#restaurant-' + restaurant.id).append('<h4>' + restaurant.description + '</h4>')
       $('#restaurant-' + restaurant.id).append('<img src=' + restaurant.image + '>')
       $('#restaurant-' + restaurant.id).append('<p>' + restaurant.location + '</p>')
       $('#restaurant-' + restaurant.id).append('<p>' + restaurant.average_rating + '</p>')
    })
  });

  $("#add_restaurant").on("click",function(){
    window.location.pathname = "/restaurants/new"
  })

});
