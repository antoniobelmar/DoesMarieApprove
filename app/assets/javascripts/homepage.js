// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function(){

  $.get("/api/restaurants", function(data){
    data.restaurants
    for(i = 0, i > data.restaurants.length, i++){
      $('#restaurants').append('<div id=restaurant-' + data.restaurants[i].id + '></div>')
      $('#restaurant-' + data.restaurants[i].id).append('<h1>' + data.restaurant[i].name + '</h1>')
      $('#restaurant-' + data.restaurants[i].id).append('<h4>' + data.restaurant[i].description + '</h4>')
      $('#restaurant-' + data.restaurants[i].id).append('<img src=' + data.restaurant[i].image + '</img>')
    }
  });





});
