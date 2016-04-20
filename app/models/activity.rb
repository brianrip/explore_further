class Activity < ActiveRecord::Base

  def initialize(raw_activity)
    @raw_activity = raw_activity
  end

  def self.find_by(activities, params)
    activities(params).map { |raw_activity|
    Activity.new(raw_activity)}
  end

  def self.build_activity(activity_hash)
    activity = Activity.find_or_create_by(id: activity_hash.id)
    activity.id = activity_hash.id
    activity.name = activity_hash.name
    activity.location = activity_hash.location
    activity.type = activity_hash.type
    activity.kudos_count = activity_hash.kudos_count
    activity.max_speed = activity_hash.max_speed
    activity.distance = activity_hash.distance
    activity.moving_time = activity_hash.moving_time
    activity.total_elevation_gain = activity_hash.total_elevation_gain
    activity.start_date_local = activity_hash.start_date_local
    activity.achievement_count = activity_hash.achievement_count
    activity.start_latlng = activity_hash.start_latlng
    activity.save
    activity
  end
end
