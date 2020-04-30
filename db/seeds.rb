# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
Dog.destroy_all 
Dogsitter.destroy_all
City.destroy_all

# Seeds for Dogsitter, Dog & City
10.times do
  dogsitter = Dogsitter.create!(name: Faker::Name.first_name)
  dog = Dog.create!(name: Faker::GreekPhilosophers.name)
  city = City.create!(city_name: Faker::Address.city)
end

# Seed for Stroll
10.times do
  the_dogsitter = Dogsitter.find(Dogsitter.pluck(:id).shuffle.first)
  the_dog = Dog.find(Dog.pluck(:id).shuffle.first)
  the_stroll = Stroll.create!(dogsitter: the_dogsitter, dog: the_dog)
end