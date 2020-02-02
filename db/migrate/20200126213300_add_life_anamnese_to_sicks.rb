class AddLifeAnamneseToSicks < ActiveRecord::Migration[5.2]
  def change
    add_reference :sicks, :lifeanamnese, foreign_key: true
  end
end
