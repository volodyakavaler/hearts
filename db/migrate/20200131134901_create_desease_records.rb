class CreateDeseaseRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :desease_records do |t|
      t.date :start_date
      t.date :finish_date
      t.string :result
      t.string :disease_classification
      t.text :description
      t.references :sick, foreign_key: true

      t.timestamps
    end
  end
end
