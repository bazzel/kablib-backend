# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Book.destroy_all

rand(40).times do
  User.create do |user|
    user.first_name = Faker::Name.first_name
    user.last_name = Faker::Name.last_name
    user.email = Faker::Internet.email
  end
end

rand(100).times do
  Book.create do |book|
    book.title = Faker::Company.catch_phrase
    book.description = Faker::Lorem.paragraph(2)
    book.author = Faker::Name.name
  end
end
