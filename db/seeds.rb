# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "starts destroying"
classes = [Animal, User]
classes.each do |c|
  c.destroy_all
end

puts "starts creating"

morgan = User.create(email: "morgan.autret@gmail.com", password: "morganautret", first_name: "Morgan", last_name: "Autret")
vincent = User.create(email: "salamandvincent@gmail.com", password: "vincentsalamand", first_name: "Vincent", last_name: "Salamand")
olivier = User.create(email: "olivier.chuiton@gmail.com ", password: "olivierchuiton", first_name: "Olivier", last_name: "Chuiton")
alexis = User.create(email: "alexis.bonhoure13@gmail.com ", password: "alexisbonhoure", first_name: "Alexis", last_name: "Bonhoure")


beaver = Animal.new(title: "René the Beaver" , description: "René is from Quebec. He likes to say he was struck by lightnings coming out of a UFO. Who are we to judge him? Perfect condition.", address: "146 rue de Paris, 92100, Boulogne", daily_price: 40)
beaver.remote_photo_url="https://peripateticbone.files.wordpress.com/2016/08/stuffed-beaver-on-natchez-trace.jpg"
beaver.user = morgan
beaver.save

bobcat = Animal.new(title: "Bob the cat" , description: "Ugly and pleasing. Yes, Bob lost his eyes in a warner bros cartoon stunt and those are two egg yolks. A good taxidermist gotta do what he's gotta do, right?", address: "58 rue rodier, 75009, Paris", daily_price: 30)
bobcat.remote_photo_url="https://img.buzzfeed.com/buzzfeed-static/static/enhanced/terminal01/2011/1/24/20/enhanced-buzz-6186-1295918181-1.jpg"
bobcat.user = alexis
bobcat.save

cat = Animal.new(title: "Big head Billy" , description: "Big headed and full hearted, Billy has many things crossing his mind. It usually just litterally crosses so do not expect too much. Great for dinner decoration.", address: "6 rue des petits hotels, 75011, Paris", daily_price: 20)
cat.remote_photo_url="https://img.buzzfeed.com/buzzfeed-static/static/enhanced/terminal01/2011/1/24/20/enhanced-buzz-6187-1295918277-1.jpg"
cat.user = vincent
cat.save

monkey = Animal.new(title: "Louis XVIII" , description: "Louis used to be king. He likes Jesus too. He was assassinated. He died from it.", address: "57 rue hermel, 75018, Paris", daily_price: 50)
monkey.remote_photo_url="https://img.buzzfeed.com/buzzfeed-static/static/enhanced/terminal01/2011/1/24/20/enhanced-buzz-6184-1295918263-1.jpg"
monkey.user = olivier
monkey.save

donkey = Animal.new(title: "Sancho de la Panza's" , description: "No name was given to this trustful mount. His 'de la mancha' adventures cost him his two front legs before his life. Hard times between both. ", address: "165, Boulevard Malesherbes, 75017, Paris", daily_price: 45)
donkey.remote_photo_url="https://img.buzzfeed.com/buzzfeed-static/static/enhanced/terminal01/2011/1/24/20/enhanced-buzz-6181-1295918251-2.jpg"
donkey.user = morgan
donkey.save

owl = Animal.new(title: "Elvis the barn owl" , description: "Nobody ever stepped on his blue sueding shoes. That might be the reason why Elvis shows so much confidence. PLease never mention his hair.", address: "10 Boulevard Montmartre, 75009 Paris", daily_price: 65)
owl.remote_photo_url="http://boredomtherapy.com/wp-content/uploads/2014/05/bad-taxidemy-5.jpg"
owl.user = alexis
owl.save

polar_bear = Animal.new(title: "Roger the Bipolar bear" , description: "Roger was the first bipolar bear to be ever discovered. He is a nice guy. I mean often. Well, you got me, right?", address: "57 Rue Cuvier, 75005 Paris", daily_price: 72)
polar_bear.remote_photo_url="http://boredomtherapy.com/wp-content/uploads/2014/05/bad-taxidemy-17.jpg"
polar_bear.user = vincent
polar_bear.save

wolf = Animal.new(title: "Two socks the wolf" , description: "Two socks never decided between the carpet and the wild life. After a sweaty mission for Aladdin in the desert, Two socks retired and is now doing freelance for private home owners. Do not overstep though.", address: "44 Rue du Louvre, 75001 Paris", daily_price: 82)
wolf.remote_photo_url="http://boredomtherapy.com/wp-content/uploads/2014/05/bad-taxidemy-21.jpg"
wolf.user = olivier
wolf.save

puts "done"


