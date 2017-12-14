
  console.log(window.location.pathname)

  $(document).ready(function(){
    var id = window.location.pathname.split('/')[2]

    $("#Submit").on("click", function(){
      var name = $("#name").val();
      console.log(name)
      $.post("/restaurants" , {name: name, id: id})
     window.location.href = "http://localhost:3000/restaurants/"
    });



  });
