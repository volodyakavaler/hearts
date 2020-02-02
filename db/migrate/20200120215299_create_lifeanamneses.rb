class CreateLifeanamneses < ActiveRecord::Migration[5.2]
  def change
    create_table :lifeanamneses do |t|
      t.string :marital_status
      t.string :children
      t.string :smoking
      t.string :alcohol_consumption
      t.string :drug_use
      t.string :job
      t.string :nutrition
      t.string :living_conditions
      t.string :past_illnesses
      t.references :sick, foreign_key: true

      t.timestamps
    end
  end
end
