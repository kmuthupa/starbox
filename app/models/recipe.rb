class Recipe < ActiveRecord::Base
  belongs_to :beverage
  has_many :recipe_ingredients
end
