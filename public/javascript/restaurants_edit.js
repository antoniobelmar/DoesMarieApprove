  $(document).ready(function(){
    var id = window.location.pathname.split('/')[2]

    $("#Submit").on("click", function(){
      var name = $("#name").val();
      var location = $("#location").val();
      var description = $("#description").val();
      var image = $("#image").val();
      $.ajax("/restaurants/" + id , { type: 'POST', data: { _method: 'PATCH', name: name, location: location, description: description, image: image, id: id } })

    });



  });
