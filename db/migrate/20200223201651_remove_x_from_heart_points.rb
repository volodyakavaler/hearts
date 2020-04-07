class RemoveXFromHeartPoints < ActiveRecord::Migration[5.2]
  def change
    remove_column :heart_points, :x, :float
  end
end
