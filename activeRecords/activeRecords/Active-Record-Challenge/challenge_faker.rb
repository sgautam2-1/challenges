# challenge_faker.rb
require_relative 'ar.rb'
require_relative 'models/product.rb'
require_relative 'models/category.rb'
require 'faker'

10.times do
  # Generate a new category using Faker
  category_name = Faker::Commerce.department
  category = Category.create(name: category_name)
  puts "Created category: #{category.name}"

  # Generate 10 new products for each category using Faker
  10.times do
    product_name = Faker::Commerce.product_name
    product_description = Faker::Lorem.sentence
    product_price = Faker::Commerce.price
    product_quantity = Faker::Number.between(1, 100)

    product = category.products.create(
      name: product_name,
      description: product_description,
      price: product_price,
      stock_quantity: product_quantity
    )

    puts "Created product: #{product.name}, Price: $#{product.price}, Quantity: #{product.stock_quantity}"
  end
end
