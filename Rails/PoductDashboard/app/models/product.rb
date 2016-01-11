class Product < ActiveRecord::Base
  validates :name, :description, :price, :category, presence: true
  has_many  :comments
  belongs_to :category
end
