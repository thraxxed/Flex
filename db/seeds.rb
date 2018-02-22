# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Meme.destroy_all
User.destroy_all
Like.destroy_all
Match.destroy_all

zach = User.create(username: "zach", password: "password", bio: "zach", gender: "M", latitude: 420, longitude: 420, age: 20)
seth = User.create(username: "seth", password: "password", bio: "seth", gender: "M", latitude: 420, longitude: 420, age: 20)
kevin = User.create(username: "kevin", password: "password", bio: "kevin", gender: "M", latitude: 420, longitude: 420, age: 20)

girl = User.create(username: "hottbabe", password: "password", bio: "cool girl", gender: "F", latitude: 420, longitude: 420, age: 20)


m = Meme.create(image_url: "https://i.redd.it/hrzhyf8irtg01.png")
m2 = Meme.create(image_url: "https://i.redd.it/bcijtq2h6vg01.jpg")
m3 = Meme.create(image_url: "https://i.redditmedia.com/siWQE_7inDqiPOZYNTnls_VQJWrzm0X2wek7SEOr1qo.jpg?w=1024&s=abed5b483fc327a8373d5c7f111bca94")
m4 = Meme.create(image_url: "https://i.redditmedia.com/csDnXZ554OB68moHf8Dv_XUNZRlmfu2LyvVdScM07Nw.jpg?w=530&s=d9fea163df6611abbfadf28b68f1d286t")
m5 = Meme.create(image_url: "https://res.cloudinary.com/dhjxj05jc/image/upload/v1517942555/s38ayal2krqtqbg23kai.jpg")
m6 = Meme.create(image_url: "https://res.cloudinary.com/dhjxj05jc/image/upload/v1517887824/qo6lnevxwjfbweiu2joc.jpg")
Meme.create(image_url: "https://i.imgur.com/8E2rERi.jpg")
Meme.create(image_url: "https://i.imgur.com/tqGymbW.png")
Meme.create(image_url: "https://i.imgur.com/1kWyns8.jpg")
Meme.create(image_url: "https://i.imgur.com/u62WOAs.jpg")
Meme.create(image_url: "https://i.imgur.com/278hRYY.jpg")
Meme.create(image_url: "https://i.imgur.com/SEzrRRp.png")
Meme.create(image_url: "https://i.imgur.com/jE6Hieb.jpg")
Meme.create(image_url: "https://i.imgur.com/CshZzia.jpg")
Meme.create(image_url: "https://i.imgur.com/muLQfse.png")

Meme.all.each do |meme|
  Like.create(user_id: zach.id, meme_id: meme.id, liked: true)
  Like.create(user_id: seth.id, meme_id: meme.id, liked: true)
  Like.create(user_id: kevin.id, meme_id: meme.id, liked: true)
  Like.create(user_id: girl.id, meme_id: meme.id, liked: true)
end

girl.generate_matches
