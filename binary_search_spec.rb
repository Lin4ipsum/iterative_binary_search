require 'rspec'
require_relative 'binary_search'

describe Search do 
  context "binary_search with integer array" do 
    it "returns a value if a value less than mid_index" do
      array = [4,11,26,33,49,73]
      value = 26
      Search.binary_search(array, value).should == 26
    end

    it "returns a value if a value greater than mid_index" do
      array = [4,11,26,33,49,73]
      value = 49
      Search.binary_search(array, value).should == 49
    end

    it "returns a value if a value equal to mid_index" do
      array = [4,11,26,33,49,73]
      value = 33
      Search.binary_search(array, value).should == 33
    end

    it "returns nil if value is less than min_value" do
      array = [4,11,26,33,49,73]
      value = 3
      Search.binary_search(array, value).should == nil
    end

    it "returns nil if value is greater than max_value" do
      array = [4,11,26,33,49,73]
      value = 74
      Search.binary_search(array, value).should == nil
    end

    it "returns nil if value is not in array" do
      array = [4,11,26,33,49,73]
      value = 25
      Search.binary_search(array, value).should == nil
    end
  end
end