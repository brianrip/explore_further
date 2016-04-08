class ActivitiesController < ApplicationController
  def index
    @activities = activity
  end

  def show
    @activity = activity.find { |activity|
    activity[:name][params[:id]] }
  end


private

  def activity
    @activity ||= ActivityService.new(current_athlete.token)
    .activities
  end
end
