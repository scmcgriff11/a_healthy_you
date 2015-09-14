class ConditionFood < ActiveRecord::Base
    has_many :recipes
    belongs_to :condition
end
