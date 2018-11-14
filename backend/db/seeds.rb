# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
loc = Location.new
loc.lat = 40.778188;
loc.lng = -73.727505;
Event.create(time:DateTime.now, location:loc, img:'', description:'Peter Luger''s')
loc.lat = 40.805626;
loc.lng = -73.737067;
Event.create(time:DateTime.now, location:loc, img:'', description:'Great Neck House')
loc.lat = 40.817741;
loc.lng = -73.756059;
Event.create(time:DateTime.now, location:loc, img:'', description:'SteppingStone')
User.create(username:'nynyaaa', password_digest:'123', created_at:DateTime.now, updated_at:DateTime.now)
Review.create(review:'aaa', rating:5, user_id:1, event_id:1)
