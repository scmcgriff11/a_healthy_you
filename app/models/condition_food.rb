class ConditionFood < ActiveRecord::Base
    has_many :recipes
    belongs_to :condition
    
    validates :name, presence: true, uniqueness: true
end
