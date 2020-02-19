class AddDeviceTypeToHeartResults < ActiveRecord::Migration[5.2]
  def change
    add_column :heart_results, :device_type, :string
  end
end
