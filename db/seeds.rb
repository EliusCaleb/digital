# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# 4.times do |u|
#     name =  Faker::Name.name
#     email = Faker::Internet.email
#     password = "zxcvbnm"
#     Student.create!( username: name,
#                email: email,
#                password_digest: password)
# end




15.times do |u|
    name =  Faker::Name.name
    email = Faker::Internet.email
    password = "password"
    teacher_id = Faker::Number.between(from: 1, to: 4)
    Student.create!( name: name,
               email: email,
               password_digest: password,
               teacher_id: teacher_id)
end