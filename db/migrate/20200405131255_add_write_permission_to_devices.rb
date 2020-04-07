class AddWritePermissionToDevices < ActiveRecord::Migration[5.2]
  def change
    add_column :devices, :write_permission, :boolean
  end
end
