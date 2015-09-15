class PreparationTip < ActiveRecord::Base
    belongs_to :recipes
    
    validates :name, presence: true, uniqueness: true
end
