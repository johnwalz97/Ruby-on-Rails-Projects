class Comment < ActiveRecord::Base
  validates :comment, :product_id, presence: true
  belongs_to :product
end
