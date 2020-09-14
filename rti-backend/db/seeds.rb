# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# user = User.create(username: 'AlexV', age: '35', location: 'ur heart', password: 'password', gender: 'male', looking_for: 'women', bio: 'Im just here so I dont get fined', interests: 'real housewives')
# inmate = Inmate.create(username: 'wet wet', gender: 'female', age: '45', charges: 'too sexy', release_date: 'May 2025', looking_for: 'men')
# comment = Comment.create(body: 'come home to me mama', user_id: 2, inmate_id: 2)

def inmates
    response = RestClient.get 'https://jailbase-jailbase.p.rapidapi.com/recent/'
    json = JSON.parse response
  
    if !json.nil?
      json["data"].map do |inmate|
        Inmate.create(name: "#{inmate["profile"]["first_name"]} #{inmate["profile"]["last_name"]}", image_url: inmate["profile"]["image_url"])
      end
    else
      puts "error fetching inmates"
    end
  end