class ActivitiesController < ApplicationController
  def index
    @activities = activities
  end

  def show
    @activity = activities.find { |activity|
    activity[:name][params[:id]] }
  end


private

  def activities
    @activities ||= ActivityService.new(current_athlete.token)
    .activities
  end
end
