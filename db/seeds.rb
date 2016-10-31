# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Show.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('Show')
Note.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('Note')
User.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('User')
Team.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('Team')
Membership.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('Membership')
Beat.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('Beat')

# NHO: nice seeds!

testTeam = Team.create(name:"Richie")
testTeam2 = Team.create(name:"Pizza")

testShow1 = Show.create(title:"The Generic Show", date:"Oct 14 2016", length:25, body: "A very generic show!", team_id: 1 )
testShow2 = Show.create(title:"The Even More Generic Show", date:"Oct 21 2016", length:25, body: "An even more generic show!", team_id: 1)

testBeat1 = Beat.create(title: "1A", body: "Involved two generic people", show_id: 1)
testBeat2 = Beat.create(title: "1B", body: "Involved two generic people", show_id: 1)
testBeat3 = Beat.create(title: "1C", body: "Involved two generic people", show_id: 1)
testBeat4 = Beat.create(title: "Group 1", body: "Involved two generic people", show_id: 1)

testNote = Note.create(body:"I thought we could have been more generic", private: false, beat_id: 1, user_id:1)

testUser = User.create(email:"kevin8@gmail.com", password:"kevin8")
testUser = User.create(email:"aaron8@gmail.com", password:"aaron8")
testUser = User.create(email:"betsy8@gmail.com", password:"betsy8")
testUser = User.create(email:"katie8@gmail.com", password:"katie8")

testMembership = Membership.create(team_id:1, user_id: 1)
testMembership = Membership.create(team_id:1, user_id: 2)
testMembership = Membership.create(team_id:1, user_id: 3)
testMembership = Membership.create(team_id:1, user_id: 4)
