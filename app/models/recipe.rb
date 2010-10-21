class Recipe < ActiveRecord::Base
  has_many :parts
  validates_presence_of :name#, :user_id
end
