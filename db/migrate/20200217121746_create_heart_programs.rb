class CreateHeartPrograms < ActiveRecord::Migration[5.2]
  def change
    create_table :heart_programs do |t|
      t.references :sick, foreign_key: true
      t.references :device, foreign_key: true

      t.timestamps
    end
  end
end
