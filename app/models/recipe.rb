class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :comments, :dependent=>:destroy
  has_many :parts, :dependent=>:destroy
  accepts_nested_attributes_for :parts, :reject_if => :all_blank
  has_many :ingredients, :through=>:parts
  validates_presence_of :name#, :user_id
end
