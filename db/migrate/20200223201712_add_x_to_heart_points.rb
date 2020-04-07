class AddXToHeartPoints < ActiveRecord::Migration[5.2]
  def change
    add_column :heart_points, :x, :datetime
  end
end
