# challenge_create.rb
require_relative 'ar.rb'
require_relative 'models/product.rb'

# Create three new products using different ways
# Ensure all three new products are persisted to the database, without validation errors

# 1. Using new and save
product1 = Product.new(name: 'Product1', description: 'Description1', price: 15, stock_quantity: 10)
product1.save

# 2. Using create
product2 = Product.create(name: 'Product2', description: 'Description2', price: 20, stock_quantity: 20)

# 3. Using block initialization
product3 = Product.new do |p|
  p.name = 'Product3'
  p.description = 'Description3'
  p.price = 25
  p.stock_quantity = 30
end
product3.save

# Attempt to save a product with missing required columns
product_invalid = Product.new(name: 'P')
unless product_invalid.save
  puts "Errors: #{product_invalid.errors.full_messages.join(', ')}"
end
