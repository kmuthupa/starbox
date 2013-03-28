class Ingredient < ActiveRecord::Base
  attr_accessible :name, :price, :units
  validates_presence_of :name, :price, :units
  has_many :recipe_ingredients

  def use(qty)
    if qty > self.units
      false
    else
      update_attribute :units, self.units - qty
    end
  end

  def restock
    update_attribute :units, MAX_INVENTORY
  end
end
