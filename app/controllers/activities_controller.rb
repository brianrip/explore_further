class ActivitiesController < ApplicationController
  before_action :activities

  def index
    @all_activities = Activity.where(athlete_id: current_athlete.uid)
  end

  def show
    @activity       = Activity.find(params[:id])
    @activity     ||= Activity.find_by(id: params[:id])
    @activity_crags = Crag.where(activity_id: @activity.id)
  end
end
