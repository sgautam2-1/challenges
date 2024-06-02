# challenge_faker_read.rb
require_relative 'ar.rb'
require_relative 'models/product.rb'
require_relative 'models/category.rb'

# Find all categories in the database
categories = Category.all

categories.each do |category|
  puts "Category: #{category.name}"
  puts "Products:"

  category.products.each do |product|
    puts " - #{product.name}: $#{product.price}"
  end

  puts "\n" # Blank line for better readability
end
