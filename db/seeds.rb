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
m3 = Meme.create(image_url: "http://i0.kym-cdn.com/photos/images/original/001/330/398/734.png")
m4 = Meme.create(image_url: "https://img.memecdn.com/arthur-meme_o_7206167.jpg")
