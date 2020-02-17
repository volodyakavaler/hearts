json.extract! device, :id, :name, :type_of_device, :created_at, :updated_at
json.url device_url(device, format: :json)
