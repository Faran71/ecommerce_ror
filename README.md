
# E-commerce Ruby on Rails API
## Setup instructions for Backend

To set up the project you will need to:
1. Install Ruby and Ruby on Rails
2. Install postgreSQL.
3. Clone the project repository from GitHub.
4. Import the project into your IDE.
5. In the '/config/database.yml', change details for PostgreSQL database. Then run
```ruby
# To create databases
rails db:create

# To migrate databases
rails db:migrate

# To add data to database
rails db:seed

# To run the api
rails server
```

## Connecting to frontend
Need to add CORS to allow the Frontend to connect. Add following code to '/config/application.rb'.

```ruby 
config.middleware.insert_before 0, Rack::Cors do
    allow do
    origins 'http://localhost:3000' # Update with your frontend URL

    resource '*',
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head],
        credentials: true # Allow cookies to be sent if needed
    end
end
```

## How to create empty ruby on rails api from scratch

```ruby
# Create an api application with a PostgreSQL database
rails new ecommerce_ror --api -d=postgresql

# To generate model files which hold the structure for each model
rails generate model ...

# create database
rails db:create
rails db:migrate
rails db:seed
rails db:server
```

## Dependencies
To add dependencies you add directly to '/GEMFILE'
```ruby
# /GEMFILE

# requires ruby version 3.3.3
ruby "3.3.3"

# To allow encryption on passwords
gem 'bcrypt', '~> 3.1.7'

# to allow Cross-Origin Resource Sharing, this allows the frontend to connect to the API endpoints. Without this, there would be problems.
gem 'rack-cors', require: 'rack/cors'

# The following dependencies are required for testing
group :development, :test do
  gem 'rspec-rails'
  gem 'factory_bot_rails'
end

group :test do
  gem 'capybara'
  gem 'shoulda-matchers'
  gem 'database_cleaner-active_record'
  gem 'simplecov', require: false
end

# Need to add 'mswin mingw x64_mingw' to allow the app to run on Linux, required when uploading to AWS
gem 'tzinfo-data', platforms: %i[mswin mingw x64_mingw jruby windows]
```

To install the dependencies, run in command prompt.
```ruby
bundle install
```

   
## The RESTful route endpoints:

The default port the project will be run on is port 8080 but any can be used. You can access the API endpoints with the following URL **`https://localhost:{port}/{endpoint}`**. See the table below for all available endpoints.

|Controller | Mapping |Path | Description |
|----------|-----------|------|-------------|
| Order | GET	| `localhost:3000/orders` | Get all orders
| | GET	| `localhost:3000/orders/filter_by_user/{:user_id}` | Get all orders for a certain user using their user_id
| | POST	| `localhost:3000/orders` | To post an order using user, product and quantity sold
| | DELETE	| `localhost:3000/orders/delete_by_user/{:user_id}` | Delete all orders connected to a certain user using user_id
| Product | GET	| `localhost:3000/products` | Get all products
| | GET	| `localhost:3000/products/{:id}` | Get product by id
| | GET	| `localhost:3000/products/filter_by_category/{:category}` | Get products filtered by category
| | GET	| `localhost:3000/products/filter_by_rating/{:rating}` | Get products filtered by rating
| | GET	| `localhost:3000/products/filter_by_price/{:min_price}/{:max_price}` | Get products filtered by price, using minimum and maximum price
| | GET	| `localhost:3000/products/search/{:q}` | Get products by searching through product names
| Review | GET	| `localhost:3000/reviews` | Get all reviews
| | GET	| `localhost:3000/orders/filter_by_product/{:product_id}` | Get all reviews for a certain product
| | POST	| `localhost:3000/reviews` | Post a review for a product
| User | GET	| `localhost:3000/users` | Get all users
| | GET	| `localhost:3000/users/{:id}` | Get user by id
| | POST	| `localhost:3000/users/authenticate` | Post to get user details if email and password is correct
| | POST	| `localhost:3000/users` | Post to create a user
| | PATCH	| `localhost:3000/users/{:id}` | Patch/Update details for user
| | DELETE	| `localhost:3000/users/{:id}` | Delete user details from database

## Uploading to AWS

1. Create a EC2 instance, preferbally using ubuntu
2. Connect to EC2 instance, I used EC" Instance Connect
3. Follow 'Setup Instructions For Backend' from the top of this document to install all the programs required.
4. To run the server, in the terminal run
```ruby
rails s -b 0.0.0.0
```

## Issues
1. When connecting to Frontend, I had an issue with the url in the CORS code in '/config/application.rb'

```ruby 
config.middleware.insert_before 0, Rack::Cors do
    allow do
    # origins 'http://localhost:3000/' <- This is wrong with the '/', cannot have anything after ':3000' 
    origins 'http://localhost:3000'

    resource '*',
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head],
        credentials: true # Allow cookies to be sent if needed
    end
end
```

2. When updating the wallet for the user after making an order.

```ruby
def update_user_wallet(order)
    user = order.user
    cost = order.quantity_sold * order.product.price
    # Initially I saved the whole user but with encryption there was an issue.
    # user.save!

    # So to overcome this issue, you only change the column for the wallet and keep everything else the same.
    user.update_column(:wallet, user.wallet - cost) 
end

```

## Testing

Using the GEMFILE to install all the Testing dependencies.

Run in command prompt within project directory.
```ruby
 rails generate rspec:install

#  Generates
# '.rspec'
# '.rspec/spec_helper.rb'
# '.rspec/rails_helper.rb'
```
Add following code to 'spec/rails_helper.rb'
```ruby
RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
end
```

Add following code to 'spec/rails_helper.rb'
```ruby
Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end
```

Need To figure out the rest



To run tests, run in command promt
```ruby
bundle exec rspec
```

## Tech Stack

The technologies used for this project are:

- Ruby on Rails
- PostgreSQL
- Postman
- AWS EC2