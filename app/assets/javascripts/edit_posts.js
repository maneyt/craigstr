$(document).ready(function() {
  $("#edit-button").click(function(event){
    $(".edit_post").show();
    return false;
  });

  $("#post-response").click(function(event){
    event.preventDefault();
    $(".new_post_response").show();
  });

  $("#post-response-toggle").click(function(event){
    event.preventDefault();
    $("#post-responses").toggle();
  });
});
