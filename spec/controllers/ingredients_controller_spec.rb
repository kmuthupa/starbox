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
  end

end
