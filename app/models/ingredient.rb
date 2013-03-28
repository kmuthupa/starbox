class Ingredient < ActiveRecord::Base
  attr_accessible :name, :price, :units
  validates_presence_of :name, :price, :units
  has_many :recipe_ingredients

  def available?(qty=1)
    qty <= units ? true : false
  end

  def use(qty)
    self.available?(qty) ? (update_attribute :units, units - qty) : false
  end

  def restock
    update_attribute :units, MAX_INVENTORY
  end
end
