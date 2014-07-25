$(document).ready(function(){

  $("#submit_post").click(function() {
    var formElement = $("#new_post");
    $.ajax({
      type: "POST",
      url: formElement.prop("action"),
      data: formElement.serialize()
    }).
    fail(function(html){
      $("#success").hide();
      $("#error").show();
      $("#error").html(html.responseText);
    }).
    done(function (data) {
      $("#posts_list").append(data); 
      $("#error").hide();
      $("#success").show();
      $("#success").text("Post submitted!");
    });
    $("#post_title, #post_body").val("");
    return false;
  });
});
