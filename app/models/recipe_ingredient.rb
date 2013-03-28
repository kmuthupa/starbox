class RecipeIngredient < ActiveRecord::Base
  attr_accessible :units
  validates_presence_of :units
  validates_presence_of :recipe
  validates_presence_of :ingredient
  belongs_to :recipe
  belongs_to :ingredient
end
