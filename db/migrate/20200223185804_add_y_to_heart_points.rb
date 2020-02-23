class AddYToHeartPoints < ActiveRecord::Migration[5.2]
  def change
    add_column :heart_points, :y, :datetime
  end
end
