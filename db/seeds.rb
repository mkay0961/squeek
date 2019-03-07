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
y = User.create(first: "Yolanda", last:"Flatiron",username: "yolanda_flatiron")
n = User.create(first: "Hai", last:"Nguyen", username: "hai_nguyen")
r = User.create(first: "Ross", last:"theBoss", username: "ross_theboss")
ping = User.create(first: "Ping", last:"Pong", username: "ping_pong")
b = User.create(first: "Princess", last:"Banana Hammock", username: "princess_banana")
c = User.create(first: "Cliff", last:"McDoogle", username: "cliff_mcdoogle")
pete = User.create(first: "Pete", last:"Pan", username: "pete_pan")
x = User.create(first: "Xavier", last:"Xylophone", username: "xavier_xylophone")
serven = User.create(first: "Serven", last:"Maraghi", username: "serven_maraghi")
a = User.create(first: "Anthony", last:"Gregg", username: "anthony_gregg")
sharon = User.create(first: "Sharon", last:"Naborf", username: "sharon_naborf")

# i = Item.create(name: "Dove Deodorant", price: "5.00")
# i1 = Item.create(name: "Dove Shampoo", price: "5.39", keywords: "dryhair")
i2 = Item.create(name: "Dove Cucumber Body Wash", price: "5.53", keywords: "normalskin")
i3 = Item.create(name: "Nexxus Volumizing Shampoo", price: "5.53", keywords: "dryhair flat")
i4 = Item.create(name: "Nexxus Volumizing Condition", price: "5.53", keywords: "dryhair flat")
i5 = Item.create(name: "Dr. Bronner's Peppermint Pure-Castile Liquid Soap", price: "5.53", keywords: "dryskin sensitive")
i6 = Item.create(name: "Sensodyne ProNamel Toothpaste", price: "5.53")
i7 = Item.create(name: "CeraVe PM Lightweight Facial Moisturizing Lotion", price: "5.53", keywords: "dryskin sensitive")
i8 = Item.create(name: "Men's UltraClear Black+White Antiperspirant Deodorant", price: "5.53")
i9 = Item.create(name: "It's a 10 Miracle Leave-in Product", price: "5.53", keywords: "dryhair damaged")
i10 = Item.create(name: "Hask Argan Oil Repairing Shampoo", price: "5.53", keywords: "dryhair damaged")
i11 = Item.create(name: "Tresemme Total Repair Conditioner", price: "5.53", keywords: "dryhair damaged")


UserItem.create(user:h,item:i3, review: "great shampoo. smells nice.")
UserItem.create(user:h,item:i4, review: "best conditioner for flat hair")
UserItem.create(user:h,item:i5, review: "this soap literally tingles. not usually a fan of mint but this is awesome")
UserItem.create(user:h,item:i6, review: "fine")
UserItem.create(user:h,item:i7, review: "this is the most light-weight moisturizer ive ever used")
UserItem.create(user:h,item:i8, review: "yes, i use men's deodorant")
UserItem.create(user:h,item:i9, review: "protects your hair")
UserItem.create(user:y,item:i9, review: "love this stuff")
UserItem.create(user:y,item:i10, review: "great for my damaged hair")
UserItem.create(user:y,item:i2, review: "smells nice")

# UserItem.create(user:m,item:i2, review: "wow")
# UserItem.create(user:h,item:i1, review: "damn")
# UserItem.create(user:h,item:i2, review: "sheesh")
