class AddPolylineColumnToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :polyline, :string
  end
end
