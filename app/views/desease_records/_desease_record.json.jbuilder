json.extract! desease_record, :id, :start_date, :finish_date, :result, :disease_classification, :description, :sick_id, :created_at, :updated_at
json.url desease_record_url(desease_record, format: :json)
