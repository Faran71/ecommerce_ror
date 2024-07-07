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

product = Product.create(name: "t-shirt", price: 20, quantity: 10, image_url: "somelink", category: "Clothing", rating: 3, description: "good shirt")

order = Order.create(user: user, product: product, quantity_sold: 1)
order = Order.create(user: user, product: product, quantity_sold: 3)

review = Review.create(user: user, product: product, comment: "First comment")
