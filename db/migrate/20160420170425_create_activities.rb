class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :activity_id
      t.string :name
      t.string :location_city
      t.string :location_state
      t.string :type
      t.integer :kudos_count
      t.float :max_speed
      t.float :distance
      t.integer :moving_time
      t.float :total_elevation_gain
      t.datetime :start_date_local
      t.integer :achievement_count
      t.float :start_latitude
      t.float :start_longitude

      t.timestamps null: false
    end
  end
end
