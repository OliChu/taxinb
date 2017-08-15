# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
beaver = Animal.new(title: "Crazy Beaver" , description: "Watch out for the crazy beaver", address: "146 rue de Paris, 92100, Boulogne", daily_price: 40)
beaver.remote_photo_url="https://peripateticbone.files.wordpress.com/2016/08/stuffed-beaver-on-natchez-trace.jpg"
beaver.save
