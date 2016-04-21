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

    n = (start_long + distance)
    s = (start_long - distance)
    e = (start_lat + distance)
    w = (start_lat - distance)

    [n, s, e, w]
  end
end
