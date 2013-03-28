class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def restock

  end
end
