# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cats = Cat.create([
  { name: Faker::RickAndMorty.character, color: 'blue', birth_date: '2015/01/20', sex: 'm', description: Faker::RickAndMorty.quote },
  { name: Faker::RickAndMorty.character, color: 'blue', birth_date: '2015/01/20', sex: 'f', description: Faker::RickAndMorty.quote },
  { name: Faker::RickAndMorty.character, color: 'red', birth_date: '2013/01/20', sex: 'm', description: Faker::RickAndMorty.quote },
  { name: Faker::RickAndMorty.character, color: 'blue', birth_date: '2015/07/20', sex: 'f', description: Faker::RickAndMorty.quote },
  { name: Faker::RickAndMorty.character, color: 'white', birth_date: '2015/01/20', sex: 'm', description: Faker::RickAndMorty.quote }
  ])
cat_rental_requests = CatRentalRequest.create([
  { cat_id: cats[0].id, start_date: Faker::Date.forward(25), end_date: Faker::Date.forward(40), status: 'pending'},
  {cat_id: cats[0].id, start_date: Faker::Date.backward(14), end_date: Faker::Date.forward(1), status: 'pending'},
  {cat_id: cats[2].id, start_date: Faker::Date.backward(14), end_date: Faker::Date.forward(23), status: 'pending'},
  {cat_id: cats[3].id, start_date: Faker::Date.backward(14), end_date: Faker::Date.forward(23), status: 'pending'},
  {cat_id: cats[4].id, start_date: Faker::Date.backward(14), end_date: Faker::Date.forward(23), status: 'pending' }
  ])
