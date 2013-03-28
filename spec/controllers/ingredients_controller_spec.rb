require 'spec_helper'

describe IngredientsController do
  before(:each) do
    @ingredient1 = FactoryGirl.create(:ingredient)
    @ingredient2 = FactoryGirl.create(:ingredient)
    @ingredient3 = FactoryGirl.create(:ingredient)
  end

  describe "#index" do
    it 'should render the index page with success' do
      get :index
      response.should be_success
      response.should render_template(:index)
      assigns(:ingredients).size.should == 3
    end
  end

  describe "#restock" do
    it 'should restock the ingredient inventory with success' do
      @ingredient1.use(10)
      @ingredient2.use(15)
      @ingredient3.use(5)
      post :restock
      response.should be_success
      response.should render_template(:index)
      flash[:notice].should == 'Inventory stock successfully restocked!'
      ingredients = assigns(:ingredients)
      ingredients.size.should == 3
      ingredients.each {|i| i.units.should == MAX_INVENTORY}
    end
  end
end
