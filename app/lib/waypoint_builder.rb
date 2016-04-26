module WaypointBuilder

  def set_waypoints(activity)
    polyline = activity.polyline
    waypoints = Polylines::Decoder.decode_polyline(polyline)
    waypoints.map { |lat, lng| { lat: lat, lng: lng } }
  end


end
