require 'spec_helper'

describe Ingredient do
  describe "#validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:price) }
    it { should validate_presence_of(:units) }
  end

  before(:each) do
    @ingredient = FactoryGirl.create(:ingredient)
  end

  describe "#use" do
   it 'should use 5 units' do
     @ingredient.units.should == MAX_INVENTORY
     @ingredient.use(5)
     @ingredient.units.should == 20
   end

   it 'should use 15 units' do
     @ingredient.units.should == MAX_INVENTORY
     @ingredient.use(15)
     @ingredient.units.should == 10
   end

   it 'should use not more than available units' do
     @ingredient.units.should == MAX_INVENTORY
     @ingredient.use(30).should be_false
     @ingredient.units.should == MAX_INVENTORY
   end
 end

 describe "#restock" do
   it 'should restock to maximum units' do
     @ingredient.units.should == MAX_INVENTORY
     @ingredient.use(3)
     @ingredient.units.should == 22
     @ingredient.restock
     @ingredient.units.should == MAX_INVENTORY
   end
 end
end