# challenge_read.rb
require_relative 'ar.rb'
require_relative 'models/product.rb'
require_relative 'models/category.rb'

# Find any product
product = Product.first
puts product.inspect

# Total number of products
puts "Total number of products: #{Product.count}"

# Names of all products above $10 with names starting with 'C'
products_above_10_with_C = Product.where('price > 10 AND name LIKE ?', 'C%')
puts "Products above $10 with names starting with 'C':"
products_above_10_with_C.each { |product| puts product.name }

# Total number of products with low stock quantity (less than 5)
low_stock_products = Product.where('stock_quantity < 5')
puts "Total number of products with low stock quantity: #{low_stock_products.count}"

# Find the name of the category associated with one of the products
category_name = product.category.name
puts "Category associated with the product: #{category_name}"

# Find a specific category
specific_category = Category.find_by(name: 'Beverages')  

# Use the specific category to build and persist a new product associated with this category
new_product = specific_category.products.build(name: 'New Product', description: 'New Description', price: 20.0, stock_quantity: 10)
if new_product.save
  puts "New product '#{new_product.name}' associated with category '#{specific_category.name}' has been created successfully."
else
  puts "Failed to create new product. Errors: #{new_product.errors.full_messages.join(', ')}"
end

# Find a specific category and then use it to locate all the associated products over a certain price
products_over_price = specific_category.products.where('price > ?', 15)
puts "Products associated with category '#{specific_category.name}' with price over $15:"
products_over_price.each { |product| puts "#{product.name}: $#{product.price}" }
