class Part < ActiveRecord::Base
  validates_presence_of :amount, :recipe_id, :ingredient_id
  belongs_to  :recipe
  belongs_to  :ingredient
end
