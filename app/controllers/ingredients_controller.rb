class IngredientsController < ApplicationController
  before_filter :load_ingredients

  def index
  end

  def restock
    @ingredients.each {|ingredient| ingredient.restock}
    flash[:notice] = 'Inventory stock successfully restocked!'
    render :action => :index
  end

  private

  def load_ingredients
    @ingredients = Ingredient.all
  end
end
