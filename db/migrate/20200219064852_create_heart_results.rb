class CreateHeartResults < ActiveRecord::Migration[5.2]
  def change
    create_table :heart_results do |t|
      t.references :sick, foreign_key: true
      t.references :heart_program, foreign_key: true

      t.timestamps
    end
  end
end
