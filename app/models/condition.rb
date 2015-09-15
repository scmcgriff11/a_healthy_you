class Condition < ActiveRecord::Base
    has_many :condition_food
    
    validates :name, presence: true, uniqueness: true
end
