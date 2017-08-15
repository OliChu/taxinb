# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
morgan = User.create(email: "morgan.autret@gmail.com", password: "morganautret", first_name: "Morgan", last_name: "Autret")
vincent = User.create(email: "salamandvincent@gmail.com", password: "vincentsalamand", first_name: "Vincent", last_name: "Salamand")
olivier = User.create(email: "olivier.chuiton@gmail.com ", password: "olivierchuiton", first_name: "Olivier", last_name: "Chuiton")
alexis = User.create(email: "alexis.bonhoure13@gmail.com ", password: "alexisbonhoure", first_name: "Alexis", last_name: "Bonhoure")


beaver = Animal.new(title: "Crazy Beaver" , description: "Watch out for the crazy beaver", address: "146 rue de Paris, 92100, Boulogne", daily_price: 40)
beaver.remote_photo_url="https://peripateticbone.files.wordpress.com/2016/08/stuffed-beaver-on-natchez-trace.jpg"
beaver.user = morgan
beaver.save


