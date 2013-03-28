require 'spec_helper'

describe Beverage do
  describe "#validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:recipe) }
  end
end