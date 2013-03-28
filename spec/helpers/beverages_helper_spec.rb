require 'spec_helper'

describe BeveragesHelper do
  it 'should return the formatted price' do
    helper.formatted_price(5.5).should == "$5.5"
    helper.formatted_price(3.25).should == "$3.25"
  end
end
