require 'spec_helper'

describe BeveragesController do
  before(:each) do
    @beverage1 = FactoryGirl.create(:beverage)
    @beverage2 = FactoryGirl.create(:beverage)
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
  end
end
