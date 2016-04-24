class ActivityBox

  def self.build_box(activity, distance)
    new(activity).build_box(distance)
  end

  def initialize(activity)
    @activity = activity
  end

  def build_box(distance)
    start_lat = @activity.start_latitude
    start_long = @activity.start_longitude

    s = (start_lat - distance)
    e = (start_long - distance)
    n = (start_lat + distance)
    w = (start_long + distance)

    [e, s, w, n]
  end
end
