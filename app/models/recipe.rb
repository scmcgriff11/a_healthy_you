class Recipe < ActiveRecord::Base
    belongs_to :recipes
    has_many :foods
end
