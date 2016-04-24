class CragsController < ApplicationController
  def index
    activity = Activity.find_by(id: params[:activity_id])
    distance = 0.01
    @crags = CragService.new.crag_children(climbing_area(ActivityBox.build_box(activity, distance)))
  end

  def create
    require "pry"
    binding.pry
    @crags = Crag.build_crags
  end
end
