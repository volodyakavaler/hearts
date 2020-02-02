class CreateSicks < ActiveRecord::Migration[5.2]
  def change
    create_table :sicks do |t|
      t.string :first_name
      t.string :last_name
      t.string :patronymic
      t.date :date_of_birth
      t.string :address
      t.string :phone
      t.string :policy
      t.string :passport
      t.string :sex

      t.timestamps
    end
  end
end
