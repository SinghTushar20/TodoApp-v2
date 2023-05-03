# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(email: 'tusharsingh20112001@gmail.com', password: 'password', password_confirmation: 'password')
5.times do |index|
    Task.create!({ title: "Todo #{index + 1}", completed: false, user_id: User.first.id})
  end
  
  puts "5 uncompleted todos created"
  
  5.times do |index|
    Task.create!({ title: "Todo #{index + 1}", completed: true, user_id: User.first.id})
  end
  
  puts "5 completed todos created"