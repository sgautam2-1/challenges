# challenge_delete.rb
require_relative 'ar.rb'
require_relative 'models/product.rb'

# Find and delete one of the products created in challenge_create.rb
product_to_delete = Product.find_by(name: 'Product1')
product_to_delete.destroy if product_to_delete
