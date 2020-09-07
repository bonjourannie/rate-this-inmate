# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(username: 'AlexV', age: '35', location: 'ur heart', password: 'password', gender: 'male', looking_for: 'women', bio: 'Im just here so I dont get fined', interests: 'real housewives')
inmate = Inmate.create(username: 'wet wet', gender: 'female', age: '45', charges: 'too sexy', release_date: 'May 2025', looking_for: 'men')
