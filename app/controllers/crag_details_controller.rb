class CragDetailsController < ApplicationController
  def show
    @crag = Crag.find_by(id: params[:id])
    @crag_children = crag_children_service(@crag.cid)
  end

  private

  def crag_children_service(crag_node)
    CragService.new.crag_children(crag_node)
  end
end
