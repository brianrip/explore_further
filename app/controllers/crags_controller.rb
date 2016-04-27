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
end
