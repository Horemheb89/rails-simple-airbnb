# This file should contain all the record creation needed to seed the database
# with its default values. # The data can then be loaded with the rails db:seed
# command (or created alongside the database with db:setup). # # Examples:
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#  Character.create(name: 'Luke', movie: movies.first)

# Flat.create!( name: 'Light & Spacious Garden Flat London', address: '10
# Clifton Gardens London W9 1DT', description: 'A lovely summer feel for this
# spacious garden flat. Two double bedrooms, open plan living area, large
# kitchen and a beautiful conservatory', price_per_night: 75, number_of_guests:
# 3 )

puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'
flat_w9 = {
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double
  bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
}

flat_e1 = {
  name: 'Large studio flat London',
  address: '56A Shoreditch High St, London E1 6PQ',
  description: 'A top floor studio flat with own balcony',
  price_per_night: 125,
  number_of_guests: 2
}

flat_sw1 = {
  name: '4-bed translateral flat, ground floor, London',
  address: '102 Victoria Park, London SW1 2HL',
  description: 'Beautiful garden flat with with private terrace,
  located around the corner from Harrods',
  price_per_night: 560,
  number_of_guests: 8
}

flat_n16 = {
  name: '2 bed flat in Harringey, fully furnished',
  address: '32B Green Lanes, London N16 2HX',
  description: 'A first floor flat with view over Finsbury Park',
  price_per_night: 100,
  number_of_guests: 4
}

[flat_n16, flat_sw1, flat_e1, flat_w9].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts 'Finished!'
