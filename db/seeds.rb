# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Meme.destroy_all
User.destroy_all

m = Meme.create(image_url: "https://i.redd.it/hrzhyf8irtg01.png")
m2 = Meme.create(image_url: "https://i.redd.it/bcijtq2h6vg01.jpg")
m3 = Meme.create(image_url: "https://i.redditmedia.com/siWQE_7inDqiPOZYNTnls_VQJWrzm0X2wek7SEOr1qo.jpg?w=1024&s=abed5b483fc327a8373d5c7f111bca94")
m4 = Meme.create(image_url: "https://i.redditmedia.com/csDnXZ554OB68moHf8Dv_XUNZRlmfu2LyvVdScM07Nw.jpg?w=530&s=d9fea163df6611abbfadf28b68f1d286t")
m5 = Meme.create(image_url: "https://res.cloudinary.com/dhjxj05jc/image/upload/v1517942555/s38ayal2krqtqbg23kai.jpg")
m6 = Meme.create(image_url: "https://res.cloudinary.com/dhjxj05jc/image/upload/v1517887824/qo6lnevxwjfbweiu2joc.jpg")
