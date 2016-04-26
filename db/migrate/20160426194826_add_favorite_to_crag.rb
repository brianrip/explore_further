class AddFavoriteToCrag < ActiveRecord::Migration
  def change
    add_column :crags, :favorite, :boolean, default: false
  end
end
