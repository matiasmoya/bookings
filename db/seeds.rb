# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Creating users and owners"
owner = Owner.create(email: "asd@asd.com", password: "asdqwe123", password_confirmation: "asdqwe123")
user = User.create(email: "asd@asd.com", password: "asdqwe123", password_confirmation: "asdqwe123")
puts "\nDone, credentials for both are email => asd@asd.com password => asdqwe123\n\n"

puts "Creating a venue, fields and schedules for test purpose"
venue = owner.build_venue(name: "Demo venue")
if venue.save
  puts "Created a venue"
else
  puts venue.errors.inspect
end
i = 0
3.times do
  i += 1
  venue.fields.build(name: "field #{i}").save!
end

3.times do
  venue.schedules.build(start_at: "1400", ends_at: "2300").save!
end
puts "Ready to go!"
