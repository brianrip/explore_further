class AddOathFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :athletes, :profile, :string
    add_column :athletes, :email, :string
  end
end
