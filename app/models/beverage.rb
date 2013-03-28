class Beverage < ActiveRecord::Base
  attr_accessible :name
  validates_presence_of :name, :recipe
  has_one :recipe

  delegate :price, :to => :recipe
  delegate :available?, :to => :recipe

  def vend
    available? ? recipe.make : false
  end
end
