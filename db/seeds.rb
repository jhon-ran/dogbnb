# 4 tables with 10 registers seeded. If want more data seed again before seeing in terminal

require 'faker'
# If you want do empty the db befor seeding remove comments below
#Dog.destroy_all 
#Dogsitter.destroy_all
#City.destroy_all
#CityDogsitter.destroy_all
#CityDog.destroy_all

# Seeds for Dogsitter, Dog & City
20.times do
  dogsitter = Dogsitter.create!(name: Faker::Name.first_name)
  dog = Dog.create!(name: Faker::GreekPhilosophers.name)
  city = City.create!(city_name: Faker::Address.city)
end

# Seed for Stroll
20.times do
  the_dogsitter = Dogsitter.find(Dogsitter.pluck(:id).shuffle.first)
  the_dog = Dog.find(Dog.pluck(:id).shuffle.first)
  the_stroll = Stroll.create!(dogsitter: the_dogsitter, dog: the_dog)
end

# Seed for CityDogsitter
20.times do
  the_dogsitter = Dogsitter.find(Dogsitter.pluck(:id).shuffle.first)
  the_city = City.find(City.pluck(:id).shuffle.first)
  city_dogsitter = CityDogsitter.create!(dogsitter: the_dogsitter, city: the_city)
end

# Seed for CityDog
20.times do
  the_dog = Dog.find(Dog.pluck(:id).shuffle.first)
  the_city = City.find(City.pluck(:id).shuffle.first)
  city_dog = CityDog.create!(dog: the_dog, city: the_city)
end
