class Dojo < ActiveRecord::Base
    validates :name, :city, :state, presence: true
    validates_length_of :state, minimum: 2, maximum: 2
    has_many :ninjas
end
