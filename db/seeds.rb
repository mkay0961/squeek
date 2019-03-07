# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Item.destroy_all
UserItem.destroy_all

m = User.create(first: "Matthew", last:"Kay",username: "matthew_kay")
h = User.create(first: "Heloise", last:"Taillet", username: "heloise_taillet")

i = Item.create(name: "Dove Deodorant", price: "5.00")
i1 = Item.create(name: "Dove shampoo", price: "5.39")
i2 = Item.create(name: "Dove bodywash", price: "5.53")


UserItem.create(user:m,item:i, review: "very good")
UserItem.create(user:m,item:i2, review: "wow")

UserItem.create(user:h,item:i1, review: "damn")
UserItem.create(user:h,item:i2, review: "sheesh")
