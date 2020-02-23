class AddUidToDevices < ActiveRecord::Migration[5.2]
  def change
    add_column :devices, :uid, :integer
  end
end
