$(document).ready(function(){

  $("#submit_post").click(function() {
    var formElement = $("#new_post");
    $.ajax({
      type: "POST",
      url: formElement.prop("action"),
      data: formElement.serialize()
    }).
    fail(function(xhr){
      $("#errors").css('visibility', 'visible');
    }).
    done(function (data) {
      $("#posts_list").append(data); 
    });
    $("#post_title, #post_body").val("");
    return false;
  });
});
