json.extract! protest, :id, :description, :location, :contact_organization, :contact_name, :contact_phone, :present, :num_in_series, :is_repeated, :type, :created_at, :updated_at
json.url protest_url(protest, format: :json)
