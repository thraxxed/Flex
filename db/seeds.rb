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

zach = User.create(username: "Zach", password: "password", bio: "zach", gender: "M", latitude: 420, longitude: 420, age: 20)
seth = User.create(username: "Seth", password: "password", bio: "seth", gender: "M", latitude: 420, longitude: 420, age: 20)
seth.picture = File.open('app/assets/images/diddy.jpg')
kevin = User.create(username: "Kevin", password: "password", bio: "kevin", gender: "M", latitude: 420, longitude: 420, age: 20)

girl = User.create(username: "Emily", password: "password", bio: "cool girl", gender: "F", latitude: 420, longitude: 420, age: 20)
girl.picture = File.open('app/assets/images/anime.jpg')
girl2 = User.create(username: "Sarah", password: "password", bio: "cool girl", gender: "F", latitude: 420, longitude: 420, age: 20)
girl3 = User.create(username: "Ellen", password: "password", bio: "cool girl", gender: "F", latitude: 420, longitude: 420, age: 20)


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
Meme.create(image_url: "https://res.cloudinary.com/dhjxj05jc/image/upload/v1519359901/r-askreddit-ufirespeed76-3h-whats-a-good-way-to-overcome-awful-31036234_qqep9w.png")
Meme.create(image_url: "https://res.cloudinary.com/dhjxj05jc/image/upload/v1519360012/Screen_Shot_2018-02-22_at_8.26.23_PM_ckq45r.png")
Meme.create(image_url: "https://res.cloudinary.com/dhjxj05jc/image/upload/v1519360160/Screen_Shot_2018-02-22_at_8.29.07_PM_hmh3f0.png")
Meme.create(image_url: "https://res.cloudinary.com/dhjxj05jc/image/upload/v1519360134/Screen_Shot_2018-02-22_at_8.28.30_PM_blittm.png")
Meme.create(image_url: "https://res.cloudinary.com/dhjxj05jc/image/upload/v1519360291/Screen_Shot_2018-02-22_at_8.31.09_PM_i6hbs2.png")
Meme.create(image_url: "https://res.cloudinary.com/dhjxj05jc/image/upload/v1519360358/Screen_Shot_2018-02-22_at_8.32.25_PM_kcj801.png")
Meme.create(image_url: "https://res.cloudinary.com/dhjxj05jc/image/upload/v1519360395/Screen_Shot_2018-02-22_at_8.33.03_PM_qjqpcm.png")
Meme.create(image_url: "https://res.cloudinary.com/dhjxj05jc/image/upload/v1519360456/Screen_Shot_2018-02-22_at_8.34.05_PM_ufmgmx.png")
Meme.create(image_url: "https://res.cloudinary.com/dhjxj05jc/image/upload/v1519360553/Screen_Shot_2018-02-22_at_8.35.34_PM_kvmttd.png")
Meme.create(image_url: "https://res.cloudinary.com/dhjxj05jc/image/upload/v1519360666/Screen_Shot_2018-02-22_at_8.37.29_PM_vjjs48.png")
Meme.create(image_url: "https://res.cloudinary.com/dhjxj05jc/image/upload/v1519360719/Screen_Shot_2018-02-22_at_8.38.17_PM_z7cuoi.png")
Meme.create(image_url: "https://res.cloudinary.com/dhjxj05jc/image/upload/v1519360840/Screen_Shot_2018-02-22_at_8.39.58_PM_jebh8r.png")
Meme.create(image_url: "https://res.cloudinary.com/dhjxj05jc/image/upload/v1519360916/Screen_Shot_2018-02-22_at_8.41.40_PM_tlnabl.png")
Meme.create(image_url: "https://res.cloudinary.com/dhjxj05jc/image/upload/v1519360983/Screen_Shot_2018-02-22_at_8.41.54_PM_iry6zl.png")
Meme.create(image_url: "https://res.cloudinary.com/dhjxj05jc/image/upload/v1519360994/Screen_Shot_2018-02-22_at_8.42.46_PM_vqruvc.png")
Meme.create(image_url: "https://res.cloudinary.com/dhjxj05jc/image/upload/v1519361114/Screen_Shot_2018-02-22_at_8.44.53_PM_f3vsrh.png")
Meme.create(image_url: "https://res.cloudinary.com/dhjxj05jc/image/upload/v1519361120/Screen_Shot_2018-02-22_at_8.44.01_PM_b5bave.png")
Meme.create(image_url: "https://res.cloudinary.com/dhjxj05jc/image/upload/v1519361246/Screen_Shot_2018-02-22_at_8.47.13_PM_vqjlx7.png")
Meme.create(image_url: "https://res.cloudinary.com/dhjxj05jc/image/upload/v1519361299/Screen_Shot_2018-02-22_at_8.47.58_PM_p3xaxn.png")
Meme.create(image_url: "https://res.cloudinary.com/dhjxj05jc/image/upload/v1519361343/Screen_Shot_2018-02-22_at_8.48.39_PM_nl0chs.png")
Meme.create(image_url: "https://res.cloudinary.com/dhjxj05jc/image/upload/v1519361419/Screen_Shot_2018-02-22_at_8.49.56_PM_jarali.png")
Meme.create(image_url: "https://res.cloudinary.com/dhjxj05jc/image/upload/v1519361496/Screen_Shot_2018-02-22_at_8.51.16_PM_dtrq2u.png")
Meme.create(image_url: "https://res.cloudinary.com/dhjxj05jc/image/upload/v1519361596/Screen_Shot_2018-02-22_at_8.52.50_PM_eoqbzt.png")
Meme.create(image_url: "https://res.cloudinary.com/dhjxj05jc/image/upload/v1519361654/Screen_Shot_2018-02-22_at_8.53.43_PM_jcounl.png")
Meme.create(image_url: "https://res.cloudinary.com/dhjxj05jc/image/upload/v1519361772/Screen_Shot_2018-02-22_at_8.55.50_PM_e3ze5e.png")
Meme.create(image_url: "https://res.cloudinary.com/dhjxj05jc/image/upload/v1519361795/Screen_Shot_2018-02-22_at_8.56.17_PM_iyflbq.png")
Meme.create(image_url: "https://s-media-cache-ak0.pinimg.com/originals/5b/ba/9d/5bba9ddcc0fa1b3e1cfa714cce371d53.jpg")




Meme.all.each do |meme|
  Like.create(user_id: zach.id, meme_id: meme.id, liked: true)
  Like.create(user_id: seth.id, meme_id: meme.id, liked: true)
  Like.create(user_id: kevin.id, meme_id: meme.id, liked: true)
  Like.create(user_id: girl.id, meme_id: meme.id, liked: true)
end

girl.generate_matches
