class CragsController < ApplicationController

  def index
    @crags = Crag.all
  end

  def create
    activity = Activity.find_by(id: params[:activity_id])
    distance = params[:distance]
    athlete_id = current_athlete.id
    CragsBuilder.build_crags(activity, distance, athlete_id)

    redirect_to activity_path(activity.slug)
  end

  def destroy
    activity_id = Activity.find(params[:id]).id
    crags = Crag.where("activity_id = ? AND favorite = ?", activity_id, false)
    crags.each { |crag| crag.destroy}

    redirect_to activity_path(activity_id)
  end
end
