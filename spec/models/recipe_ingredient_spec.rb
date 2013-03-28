require 'spec_helper'

describe RecipeIngredient do
  describe "#validations" do
    it { should validate_presence_of(:recipe) }
    it { should validate_presence_of(:ingredient) }
    it { should validate_presence_of(:units) }
  end

end