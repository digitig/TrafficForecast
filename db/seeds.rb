# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'seeding countries...'
load 'db/seeds/country_seeds.rb'
#puts 'seeding airports...'
#load 'db/seeds/airport_seeds.rb'
#puts 'seeding regions...'
#load 'db/seeds/region_seeds.rb'
puts 'done.'
