json.array!(@fields) do |field|
  json.extract! field, :id, :name, :venue_id
  json.url field_url(field, format: :json)
end
