class Recipe < ActiveRecord::Base
  belongs_to :beverage
  has_many :recipe_ingredients

  def price
    prices = recipe_ingredients.collect {|r| r.ingredient.price * r.units}
    prices.inject {|sum, x| sum + x}
  end

  def available?
    self.recipe_ingredients.each do |r|
      return false unless r.ingredient.available?(r.units)
    end
    true
  end
end
