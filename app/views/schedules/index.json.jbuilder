json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :start_at, :ends_at, :venue
  json.url schedule_url(schedule, format: :json)
end
