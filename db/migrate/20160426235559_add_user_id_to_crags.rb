class AddUserIdToCrags < ActiveRecord::Migration
  def change
    add_column :crags, :athlete_id, :integer
  end
end
