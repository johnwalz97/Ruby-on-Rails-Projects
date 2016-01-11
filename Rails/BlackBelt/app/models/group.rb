class Group < ActiveRecord::Base
  belongs_to :user
  serialize :users
  has_many :members
  validates :name, :description, :user_id, presence: true
  validates_length_of :name, minimum: 5
  validates_length_of :description, minimum: 10
end
