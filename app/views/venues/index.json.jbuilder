json.array!(@venues) do |venue|
  json.extract! venue, :id, :name, :owner_id
  json.url venue_url(venue, format: :json)
end
