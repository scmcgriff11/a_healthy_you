class Recipe < ActiveRecord::Base
    belongs_to :recipes
    has_many :foods
    
    validates :name, presence: true, uniqueness: true
end
