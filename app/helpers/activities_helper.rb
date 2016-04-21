module ActivitiesHelper
#   <br>
#   <div class="col-md-offset-3 col-md-6">
#     <div id='map'>
#     <script>
#     mapboxgl.accessToken = 'pk.eyJ1IjoiYnJpYW5yaXAiLCJhIjoiY2ltcWQ1MXc3MDBpanZsbTRjMGhpdjgycCJ9.q8LWUVvBKZ4OZUeA3L_KAA';
#     var map = new mapboxgl.Map({
#         container: 'map', // container id
#         style: 'mapbox://styles/mapbox/streets-v8', //stylesheet location
#         center: [-74.50, 40], // starting position
#         zoom: 9 // starting zoom
#     });
#     L.mapbox.map('map-two', 'mapbox.streets').setView([39.900091, -105.77848], 14);
#     </script>
#     </div>
#   </div>
#    var path = <%=# @activity.polyline(@activity.activity).to_json.html_safe %>;

    # poly.setPath(path);

end
