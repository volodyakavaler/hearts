class RemoveYFromHeartPoints < ActiveRecord::Migration[5.2]
  def change
    remove_column :heart_points, :y, :float
  end
end
