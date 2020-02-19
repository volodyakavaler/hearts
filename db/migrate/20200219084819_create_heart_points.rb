class CreateHeartPoints < ActiveRecord::Migration[5.2]
  def change
    create_table :heart_points do |t|
      t.float :x
      t.float :y
      t.references :heart_result, foreign_key: true

      t.timestamps
    end
  end
end
