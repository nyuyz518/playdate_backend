# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
loc = Location.new
loc.coordinates = Coordinates.new
loc.coordinates.lat = 40.778188;
loc.coordinates.lng = -73.727505;
loc.address = "peter's address";

Event.create(time:DateTime.now, location:loc, img:'', description:'Peter Luger''s')
loc.coordinates.lat = 40.805626;
loc.coordinates.lng = -73.737067;
loc.address = "gn house address";

Event.create(time:DateTime.now, location:loc, img:'', description:'Great Neck House')
loc.coordinates.lat = 40.817741;
loc.coordinates.lng = -73.756059;
loc.address = "stepping address";
Event.create(time:DateTime.now, location:loc, img:'', description:'SteppingStone')
User.create(username:'nynyaaa', password_digest:'123', created_at:DateTime.now, updated_at:DateTime.now)
Review.create(review:'aaa', rating:5, user_id:1, event_id:1)
