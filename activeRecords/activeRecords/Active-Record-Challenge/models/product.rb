# product.rb
class Product < ActiveRecord::Base
  # This AR object is linked with the products table.
  
  # A product has a many-to-one relationship with a category.
  # The products table has a category_id foreign key.
  # In other words, a product belongs to a category.
  belongs_to :category

  # Record all the columns that exist in the products table:
  # id, name, description, price, stock_quantity, category_id, created_at, updated_at

  # Validation to ensure all columns (other than foreign keys, id, or datetime column) are filled out
  validates :name, :description, :price, :stock_quantity, presence: true
  validates :name, uniqueness: true
  validates :name, length: { minimum: 4 }
end
