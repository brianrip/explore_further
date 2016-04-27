class FavoriteCragsController < ApplicationController
  def index
    @favorite_crags = Crag.where("athlete_id = ? AND favorite = ?", current_athlete.id, true)
  end
end
