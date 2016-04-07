class Activity < OpenStruct

  def initialize(raw_activity)
    @raw_activity = raw_activity
  end

  def self.find_by(activities, params)
    activities(params).map { |raw_activity|
    Activity.new(raw_activity)}
  end
end
