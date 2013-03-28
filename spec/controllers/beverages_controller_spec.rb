require 'spec_helper'

describe BeveragesController do
  before(:each) do
    @beverage1 = FactoryGirl.create(:beverage)
    @beverage2 = FactoryGirl.create(:beverage)
    @recipe = FactoryGirl.create(:recipe)
    @recipe.recipe_ingredients << FactoryGirl.create(:recipe_ingredient, :recipe_id => @recipe.id)
    @recipe.recipe_ingredients << FactoryGirl.create(:recipe_ingredient, :recipe_id => @recipe.id)
    @recipe.save
    @beverage1.update_attribute :recipe, @recipe
  end

  describe "#index" do
    it 'should render the index page with success' do
      get :index
      response.should be_success
      response.should render_template(:index)
      assigns(:beverages).size.should == 2
    end
  end

  describe "#vend" do
    it 'should vend with success and display message' do
      post :vend, {:id => @beverage1.id}
      response.should be_success
      response.body.should == "Thank you! Please enjoy your #{@beverage1.name}"
      assigns(:beverage).should_not be_nil
      assigns(:beverage).should == @beverage1
    end

    it 'should not vend with success and display message' do
      @beverage1.recipe.recipe_ingredients.first.ingredient.use(MAX_INVENTORY - 1)
      @beverage1.recipe.recipe_ingredients.last.ingredient.use(MAX_INVENTORY - 1)
      post :vend, {:id => @beverage1.id}
      response.should be_success
      response.body.should == "Sorry! We are temporarily unable to dispense #{@beverage1.name}. Please make a different selection"
      assigns(:beverage).should_not be_nil
      assigns(:beverage).should == @beverage1
    end
  end
end
