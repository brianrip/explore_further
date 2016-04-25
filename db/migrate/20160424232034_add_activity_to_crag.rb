class AddActivityToCrag < ActiveRecord::Migration
  def change
    add_column :crags, :activity_id, :integer
    add_foreign_key :crags, :activities
  end
end
