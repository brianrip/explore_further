class Api::V1::FavoritesController < ApplicationController
  respond_to :json

  def update
    crag = Crag.find(params[:id])
    crag.update_attribute(:favorite, true)
    crag.save
    respond_with crag
  end
end
