class ActivitiesController < ApplicationController
  def index
    @activities = activity
  end

  def show
    @activity = activity.select { |activity|
    activity[:name][params[:id]] }.first
  end


  # [{:id=>537880147,
  # :resource_state=>2,
  # :external_id=>"2016-04-06-16-21-43.fit",
  # :upload_id=>590741787,
  # :athlete=>{:id=>6032950, :resource_state=>1},
  # :name=>"Turing group jog and circuit training",
  # :distance=>3606.3,
  # :moving_time=>1283,
  # :elapsed_time=>1828,
  # :total_elevation_gain=>0.0,
  # :type=>"Run",
  # :start_date=>"2016-04-06T22:21:43Z",
  # :start_date_local=>"2016-04-06T16:21:43Z",
  # :timezone=>"(GMT-07:00) America/Denver",
  # :start_latlng=>[39.745878, -105.000333],
  # :end_latlng=>[39.749977, -105.000165],
  # :location_city=>nil,
  # :location_state=>nil,
  # :location_country=>"United States",
  # :start_latitude=>39.745878,
  # :start_longitude=>-105.000333,
  # :achievement_count=>0,
  # :kudos_count=>0,
  # :comment_count=>0,
  # :athlete_count=>1,
  # :photo_count=>0,

private

  def activity
    @activity ||= ActivityService.new(current_athlete.token)
    .activities
  end
end
