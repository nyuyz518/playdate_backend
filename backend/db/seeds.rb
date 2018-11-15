# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.create(time:DateTime.now, location:'park1', img:'', description:'park
1 is new')
Event.create(time:DateTime.now, location:'park2', img:'', description:'park
2 is new')
Event.create(time:DateTime.now, location:'park3', img:'', description:'park
3 is new')
User.create(username:'nynyaaa', password_digest:'123', created_at:DateTime.now, updated_at:DateTime.now)
Review.create(review:'aaa', rating:5, user_id:1, event_id:1)
