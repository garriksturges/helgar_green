class Ingredient < ActiveRecord::Base
  validates_presence_of :name, :variety
end
