class AddTokenColumnToAthlete < ActiveRecord::Migration
  def change
    add_column :athletes, :token, :string
  end
end
