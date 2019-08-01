# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#


rosie = User.find_or_create_by(name: "Rosie Revere")
ada = User.find_or_create_by(name: "Ada Twist")

copter = rosie.posts.find_or_create_by(title: "How to Build A Cheese Copter")
rosie.posts.find_or_create_by(title: "Meeting My Great-Great Aunt Rose")

copter.comments.destroy_all
copter.comments.create(user: ada, title: "This was an amazing first try.")
copter.comments.create(user: rosie, title: "Thank you!")
