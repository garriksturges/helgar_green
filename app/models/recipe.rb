class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :parts
  has_many :ingredients, :through=>:parts
  validates_presence_of :name#, :user_id
end
