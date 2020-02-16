class CreateDeseaseRecordNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :desease_record_notes do |t|
      t.date :record_date
      t.string :dynamics
      t.text :etc
      t.text :destination
      t.references :desease_record, foreign_key: true

      t.timestamps
    end
  end
end
