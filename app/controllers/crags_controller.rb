class CragsController < ApplicationController

  def index
    @crags = Crag.all
  end

  def create
    activity = Activity.find_by(id: params[:activity_id])
    distance = 0.01
    bounding_box = ActivityBox.build_box(activity, distance)
    area_node = CragService.new.climbing_area(bounding_box)
    crag_data = CragService.new.crag_children(area_node[:data][:mapto].first)
    crags = Crag.build_crag(crag_data)
    crags.each { |crag| crag.update_attribute(:activity_id, activity.id) }
    redirect_to crags_path
  end
end
