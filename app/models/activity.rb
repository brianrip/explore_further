class Activity < ActiveRecord::Base

  # def initialize(raw_activity)
  #   @raw_activity = raw_activity
  # end

  def self.find_by(activities, params)
    activities(params).map { |raw_activity|
    Activity.new(raw_activity)}
  end

  def self.build_activities(activities_hash)
    activities_hash.each do |activity_hash|
      activity = Activity.find_or_create_by(activity_id: activity_hash[:id])
      activity.activity_id          = activity_hash[:id]
      activity.athlete_id           = activity_hash[:athlete][:id]
      activity.name                 = activity_hash[:name]
      activity.location_city        = activity_hash[:location_city]
      activity.location_state       = activity_hash[:location_state]
      activity.activity_type        = activity_hash[:type]
      activity.kudos_count          = activity_hash[:kudos_count]
      activity.max_speed            = activity_hash[:max_speed]
      activity.distance             = activity_hash[:distance]
      activity.moving_time          = activity_hash[:moving_time]
      activity.total_elevation_gain = activity_hash[:total_elevation_gain]
      activity.start_date_local     = activity_hash[:start_date_local]
      activity.achievement_count    = activity_hash[:achievement_count]
      activity.start_latitude       = activity_hash[:start_latitude]
      activity.start_longitude      = activity_hash[:start_longitude]
      activity.save
      activity
    end
  end
end
