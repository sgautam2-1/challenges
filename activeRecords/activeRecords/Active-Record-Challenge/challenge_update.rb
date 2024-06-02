# challenge_update.rb
require_relative 'ar.rb'
require_relative 'models/product.rb'

# Find all products with stock quantity greater than 40
# Increment their stock quantity by 1 and save changes
products_to_update = Product.where('stock_quantity > 40')
products_to_update.each do |product|
  product.stock_quantity += 1
  product.save
end
