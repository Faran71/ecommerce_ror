# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user = User.create(first_name: "John", last_name: "Doe", email: "@gmail", password: "12345", wallet: 500)
user1 = User.create(first_name: "Jane", last_name: "Doe", email: "@yahoo", password: "12345", wallet: 1000)

product = Product.create(
  name: "Kiikii t-shirt",
  price: 100,
  quantity: 20,
  image_url: "https://images.unsplash.com/photo-1576566588028-4147f3842f27?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1664&q=80",
  category: "Clothes",
  rating: 3,
  description: "Unisex plain white t-Shirt with a printed cat drawn on a canvas that's blue")

Product.create(
  name: "Beige Sweatshirt",
  price: 25,
  quantity: 40,
  image_url: "https://images.unsplash.com/photo-1644263701566-f99003bcba2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1266&q=80",
  category: "Clothes",
  rating: 3,
  description: "Unisex light beige sweatshirt with small image detailing on center of chest, oversized relaxed fit")

Product.create(
  name: "Maroon GAP trouser",
  price: 30,
  quantity: 50,
  image_url: "https://images.unsplash.com/photo-1638394440667-aa54a7c0a703?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
  category: "Clothes",
  rating: 5,
  description: "Mens maroon corduroy wide leg trousers, straight leg with a regular fit, up to ankles")

  Product.create(
  name: "Black Zara leather jacket",
  price: 50,
  quantity: 50,
  image_url: "https://images.unsplash.com/photo-1551028719-00167b16eac5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1035&q=80",
  category: "Clothes",
  rating: 3,
  description: "Black fitted leather jacket with silver hardware")
Product.create(
  name: "Hoka Running shoes",
  price: 300,
  quantity: 5,
  image_url: "https://images.unsplash.com/photo-1676767720609-c76265fb3074?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1227&q=80",
  category: "Clothes",
  rating: 5,
  description: "The only running shoes you will ever need, steamlined, shock absorption, limited edition")
Product.create(
  name: "Green maxi-dress",
  price: 35,
  quantity: 40,
  image_url: "https://images.unsplash.com/photo-1609695813802-3c443be34359?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2832&q=80",
  category: "Clothes",
  rating: 2,
  description: "Full length warm green maxi dress to get you ready for a day in Italy, sleeveless with V neck and A line bottom")
Product.create(
  name: "Macbook Pro",
  price: 1200,
  quantity: 5,
  image_url: "https://images.unsplash.com/photo-1542393545-10f5cde2c810?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1665&q=80",
  category: "Electronics",
  rating: 3,
  description: "A programmers best friend. Fast and reliable.")
Product.create(
  name: "Blue iPhone 11",
  price: 460,
  quantity: 60,
  image_url: "https://images.unsplash.com/photo-1616348436168-de43ad0db179?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2881&q=80",
  category: "Electronics",
  rating: 3,
  description: "Fast and easy to use")
Product.create(
  name: "Samsung Note 20",
  price: 900,
  quantity: 10,
  image_url: "https://images.unsplash.com/photo-1618478594486-c65b899c4936?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
  category: "Electronics",
  rating: 4,
  description: "You can always trust an android. Best phone on the market.")
Product.create(
  name: "Men's Grooming Kit",
  price: 30,
  quantity: 47,
  image_url: "https://images.unsplash.com/photo-1621607512022-6aecc4fed814?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2787&q=80",
  category: "Electronics",
  rating: 4,
  description: "Beard trimmer with professional and finishing scissors to give a natural look with complimentary soothing oil")
Product.create(
  name: "Bose Over-ear Headphones",
  price: 140,
  quantity: 49,
  image_url: "https://images.unsplash.com/photo-1520170350707-b2da59970118?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1065&q=80",
  category: "Electronics",
  rating: 5,
  description: "Bose sleek black over-ear headphones with noise cancellation and ambient sound. Long battery life and 2 year warranty.")
Product.create(
  name: "Lounging chair",
  price: 90,
  quantity: 50,
  image_url: "https://images.unsplash.com/photo-1617364852223-75f57e78dc96?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjZ8fGNoYWlyfGVufDB8fDB8fHwy&auto=format&fit=crop&w=800&q=60",
  category: "Home",
  rating: 4,
  description: "Black padded lounging chair with wooden frame which will flex to your comfort")
Product.create(
  name: "Grey couch",
  price: 320,
  quantity: 50,
  image_url: "https://images.unsplash.com/photo-1583847268964-b28dc8f51f92?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2787&q=80",
  category: "Home",
  rating: 4,
  description: "Black padded lounging chair with wooden frame which will flex to your comfort")
Product.create(
  name: "Bed-side Lamp",
  price: 40,
  quantity: 40,
  image_url: "https://images.unsplash.com/photo-1534105615256-13940a56ff44?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8dGFibGUlMjBsYW1wc3xlbnwwfHwwfHx8Mg%3D%3D&auto=format&fit=crop&w=800&q=60",
  category: "Home",
  rating: 4,
  description: "Black lamp with hints of Gold. Perfect for use on a Bed-side table allowing for a brighter room with a guarantee of 20 years. Energy efficient bulb with a power rating of 20W.")
Product.create(
  name: "Glass Candle",
  price: 5,
  quantity: 200,
  image_url: "https://images.unsplash.com/photo-1603006905003-be475563bc59?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2787&q=80",
  category: "Home",
  rating: 3,
  description: "A vanilla scented candle encompassed in a strong glass cup to prevent any damage when dropped. The candle has a shelf life of many years and can burn for many hours at a time. Just make sure to not leave it burning when no one is around.")
Product.create(
  name: "Limited Edition Harry Potter Collection",
  price: 89,
  quantity: 50,
  image_url: "https://images.unsplash.com/photo-1606311698062-21c4f57cb27f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2858&q=80",
  category: "Books",
  rating: 5,
  description: "Want to read into the life of Harry Potter. Collection containing: Harry Potter and The Sorcerer's Stone + Chamber of Secrets + Prisoner of Azkaban + Goblet of Fire + Order of the Phoenix + Half-Blood Prince + Deathly Hallows. A complete collection for any enthusiast.")
Product.create(
  name: "The Kite Runner",
  price: 15,
  quantity: 25,
  image_url: "https://m.media-amazon.com/images/I/81CA-WqU+lL._AC_UF894,1000_QL80_.jpg",
  category: "Books",
  rating: 3,
  description: "Afghanistan, 1975: Twelve-year-old Amir is desperate to win the local kite-fighting tournament and his loyal friend Hassan promises to help him. But neither of the boys can foresee what will happen to Hassan that afternoon, an event that is to shatter their lives. After the Russians invade and the family is forced to flee to America, Amir realises that one day he must return to Afghanistan under Taliban rule to find the one thing that his new world cannot grant him: redemption")
Product.create(
  name: "Clinique liquid lipstick and solid lipstick duo",
  price: 32,
  quantity: 50,
  image_url: "https://images.unsplash.com/photo-1586495777744-4413f21062fa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2030&q=80",
  category: "Cosmetics",
  rating: 3,
  description: "2-for-1 combination pack containing liquid and solid lipstick to fulfil your cosmetic dreams")
Product.create(
  name: "NEAUTHY cream",
  price: 60,
  quantity: 33,
  image_url: "https://images.unsplash.com/photo-1601049541289-9b1b7bbbfe19?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2786&q=80",
  category: "Cosmetics",
  rating: 2,
  description: "Wanna keep your sking hydrated and moisturised? This cream provides you a solution to your problem. Once applied, it will keep your skin looking fresh for 24 hours.")
Product.create(
  name: "Flower pendant pearl necklace",
  price: 500,
  quantity: 10,
  image_url: "https://images.unsplash.com/photo-1515562141207-7a88fb7ce338?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80",
  category: "Jewellery",
  rating: 4,
  description: "Diamond encrusted 14-carat white gold surround in 50 spherical freshwater pearls. Length: 18 inches")



order = Order.create(user: user, product: product, quantity_sold: 1)
order = Order.create(user: user, product: product, quantity_sold: 3)

review = Review.create(user: user, product: product, comment: "First comment")
