// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require bootstrap-sprockets
$(document).ready(function(){
  $("#favorite-crag").on("click", function(event) {
    event.preventDefault();
    activityId = $(this).parent().attr('id')
    console.log(activityId)

    addToFavorites(activityId)

  });
})

function addToFavorites(activityId) {

  $.ajax({
    type: "PUT",
    url: "/api/v1/favorites/" + activityId,
    success: function() {
      console.log("sent AJAX call to update favorite")
    },
    error: function(error) {
      console.log(error.responseText)
    }
  });
}
