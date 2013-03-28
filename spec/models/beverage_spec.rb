require 'spec_helper'

describe Beverage do
  describe "#validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:recipe) }
  end

  before(:each) do
    @beverage = FactoryGirl.create(:beverage)
    @recipe = FactoryGirl.create(:recipe)
    @recipe.recipe_ingredients << FactoryGirl.create(:recipe_ingredient, :recipe_id => @recipe.id)
    @recipe.recipe_ingredients << FactoryGirl.create(:recipe_ingredient, :recipe_id => @recipe.id)
    @recipe.save
    @beverage.update_attribute :recipe, @recipe
  end

  describe "#price" do
    it 'should get the price' do
      @beverage.price.should_not be_nil
      @beverage.price.should be > 0
    end
  end

  describe "#available?" do
    it 'should be available' do
      @beverage.available?.should be_true
    end

    it 'should not be available' do
      @recipe.recipe_ingredients.first.ingredient.use(MAX_INVENTORY)
      @recipe.reload
      @beverage.reload
      @beverage.available?.should be_false
    end
  end

  describe "#vend" do
    it 'should vend with success when inventory is available' do
      @beverage.vend.should be_true
      @beverage.reload
      @beverage.recipe.recipe_ingredients.first.ingredient.units.should == 23
      @beverage.recipe.recipe_ingredients.last.ingredient.units.should == 23
    end

    it 'should fail to vend with success when inventory is not available' do
      @recipe.recipe_ingredients.first.ingredient.use(MAX_INVENTORY - 1)
      @recipe.recipe_ingredients.last.ingredient.use(MAX_INVENTORY - 1)
      @recipe.reload
      @beverage.reload
      @beverage.available?.should be_false
      @beverage.vend.should be_false
    end
  end
end