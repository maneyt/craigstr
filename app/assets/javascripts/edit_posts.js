$(document).ready(function() {
  $("#edit-button").click(function(event){
    event.preventDefault();
    $("#edit_form").show();
    return false;
  });

  $("#edit-submit").click(function(event){
    var formElement = $(event.target).parents("form");
    $.ajax({
      url: formElement.prop("action"),
      data: formElement.serialize(),
      type: "PATCH" }
      ).done(function(html){
        $("#edit_form").hide();
      });
  });

});
