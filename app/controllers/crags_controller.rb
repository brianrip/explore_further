class CragsController < ApplicationController

  def index
  end

  def create
    activity = Activity.find_by(id: params[:activity_id])
    distance = 0.01
    bounding_box = ActivityBox.build_box(activity, distance)
    area_node = CragService.new.climbing_area(bounding_box)
    crag_data = CragService.new.crag_children(area_node[:data][:mapto].first)
    require "pry"
    binding.pry

    Crag.build_crag(region_data)


  end
end
