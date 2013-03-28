class Ingredient < ActiveRecord::Base
  attr_accessible :name, :price, :units
  has_many :recipe_ingredients
end
