require 'spec_helper'

describe Recipe do
  before(:each) do
    @recipe = FactoryGirl.create(:recipe)
    @recipe.recipe_ingredients << FactoryGirl.create(:recipe_ingredient, :recipe_id => @recipe.id)
    @recipe.recipe_ingredients << FactoryGirl.create(:recipe_ingredient, :recipe_id => @recipe.id)
    @recipe.save
  end

  describe "#price" do
    it 'should get the price' do
      @recipe.price.should_not be_nil
      @recipe.price.should be > 0
    end
  end

  describe "#available?" do
    it 'should be available' do
      @recipe.available?.should be_true
    end

    it 'should not be available' do
      @recipe.recipe_ingredients.first.ingredient.use(MAX_INVENTORY)
      @recipe.reload
      @recipe.available?.should be_false
    end
  end

  describe "#make" do
    it 'should make with success' do
      @recipe.make
      @recipe.recipe_ingredients.first.ingredient.units.should == 23
      @recipe.recipe_ingredients.last.ingredient.units.should == 23
    end
  end
end