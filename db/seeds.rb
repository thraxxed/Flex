# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Meme.destroy_all

m = Meme.create(image_url: "https://i.redd.it/hrzhyf8irtg01.png")
m2 = Meme.create(image_url: "https://i.redd.it/bcijtq2h6vg01.jpg")
