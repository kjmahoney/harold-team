# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Show.destroy_all
Beat.destroy_all
Note.destroy_all

testShow = Show.create(title:"Mall Show", date:"Oct 14 2016", length:25, body: "A very good show" )

testBeat = Beat.create(title: "1A", body: "Well grounded and energetic")

testNote = Note.create(body:"Well grounded and energetic", private: false, beat_id: 1)
