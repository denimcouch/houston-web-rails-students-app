# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Instructor.destroy_all
Student.destroy_all

raul = Instructor.create(name: "Raul Sanchez")
antonio = Instructor.create(name: "Antonio Reed")
joe = Instructor.create(name: "Joe Burks")

alex = Student.create(name: "Alex Mata", major: "Software Engineering", age: 27, instructor_id: raul.id )
markitos = Student.create(name: "Markitos", major: "Software Engineering", age: 26, instructor_id: antonio.id )
mike = Student.create(name: "Mike Archer", major: "Software Engineering", age: 29, instructor_id: raul.id )
john = Student.create(name: "John Lonetree", major: "Software Engineering", age: 28, instructor_id: antonio.id )
karo = Student.create(name: "Karo Cantu", major: "Photography", age: 27, instructor_id: joe.id )

puts "Time to learn!"