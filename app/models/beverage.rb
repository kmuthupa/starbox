class Beverage < ActiveRecord::Base
  attr_accessible :name
  validates_presence_of :name, :recipe
  has_one :recipe
end
