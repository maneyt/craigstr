$(document).ready(function(){

  $("#submit_post").on("click", function() {
    var formElement = $("#new_post");
    var promise = $.ajax({
      type: "POST",
      url: formElement.prop("action"),
      data: formElement.serialize()
    }).
      done(function (data) {
        console.log(data); 
      }).
      fail(function(xhr){
        alert(xhr);
      });

    return false;
  });
});
