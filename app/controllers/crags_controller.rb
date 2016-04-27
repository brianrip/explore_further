class CragsController < ApplicationController

  def index
    @crags = Crag.all
  end

  def create
    activity = Activity.find_by(id: params[:id])
    distance = 0.01
    athlete_id = current_athlete.id
    CragsPresenter.build_crags(activity, distance, athlete_id)

    # bounding_box = ActivityBox.build_box(activity, distance)
    # area_node = CragService.new.climbing_area(bounding_box)
    # crag_data = CragService.new.crag_children(area_node[:data][:mapto].first)
    # crags = Crag.build_crag(crag_data)
    # crags.each { |crag| crag.update(activity_id: activity.id, athlete_id: current_athlete.id) }
    redirect_to activity_path(activity.slug)
  end
end
