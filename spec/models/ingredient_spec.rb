require 'spec_helper'

describe Ingredient do
  describe "#validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:price) }
    it { should validate_presence_of(:units) }
  end

end