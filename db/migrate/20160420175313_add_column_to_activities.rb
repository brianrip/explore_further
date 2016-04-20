class AddColumnToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :athlete_id, :integer
  end
end
