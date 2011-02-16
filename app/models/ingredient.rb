class Ingredient < ActiveRecord::Base
  belongs_to :user
  has_many :parts
  has_many :recipes, :through => :parts
  accepts_nested_attributes_for :parts
  validates_presence_of :name, :variety
  validates_inclusion_of :variety, :in =>["Green", "Fruit", "Vegetable", "Other"]
end
