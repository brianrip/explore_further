class ActivitiesController < ApplicationController
  def index
    @activities = activity
  end

  def show
    @activity = activity
  end

private

  def activity
    @activity ||= ActivityService.new(current_athlete.token)
    .activities
  end
end
