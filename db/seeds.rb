# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

mark = Student.create(first_name: "mark", last_name: "Pothecary")
lauren = Student.create(first_name: "Lauren", last_name: "Martin")
physs = SchoolClass.create(title: "physics", room_number: 7)
bio = SchoolClass.create(title: "biology", room_number: 4)
