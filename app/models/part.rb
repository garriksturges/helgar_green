class Part < ActiveRecord::Base
  validates_presence_of :amount, :ingredient_id
  belongs_to  :recipe
  belongs_to  :ingredient
end
