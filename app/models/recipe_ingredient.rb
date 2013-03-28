class RecipeIngredient < ActiveRecord::Base
  attr_accessible :units
  belongs_to :recipe
  belongs_to :ingredient
end
