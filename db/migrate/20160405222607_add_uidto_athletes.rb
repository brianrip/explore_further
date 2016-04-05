class AddUidtoAthletes < ActiveRecord::Migration
  def change
    add_column :athletes, :uid, :string
  end
end
