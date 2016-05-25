$(document).ready(function(){
  $(".favorite-crag").on("click", function(event) {
    event.preventDefault();
    activityId = $(this).parent().attr('id');
    $('#favorited-' + activityId).removeClass("hide");
    addToFavorites(activityId);
  });
});

function addToFavorites(activityId) {

  $.ajax({
    type: "PUT",
    url: "/api/v1/favorites/" + activityId,
    success: function() {
      console.log("sent AJAX call to update favorite");
    },
    error: function(error) {
      console.log(error.responseText);
    }
  });
}
