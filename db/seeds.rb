# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
t1 = DateTime.now
t2 = DateTime.now + 2.hours
t3 = DateTime.now + 3.hours
t4 = DateTime.now + 4.hours

Event.create(
  start_time: t1,
  end_time: t2,
  address: "peter's address",
  lat: 40.778188,
  lng: -73.727505,
  img:'',
  description:'Peter Luger Steaks')


Event.create(
  start_time: t1,
  end_time: t3,
  address: "gn house address",
  lat: 40.805626,
  lng: -73.737067,
  img:'',
  description:'Great Neck House')


Event.create(
  start_time: t1,
  end_time: t4,
  address: "stepping address",
  lat: 40.817741,
  lng: -73.756059,
  img:'',
  description:'SteppingStone')


User.create(username:'nynyaaa', password_digest:'123', created_at:DateTime.now, updated_at:DateTime.now)
Review.create(review:'aaa', rating:5, user_id:1, event_id:1)
