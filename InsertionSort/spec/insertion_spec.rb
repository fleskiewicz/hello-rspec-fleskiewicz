require 'rspec'
require_relative '../lib/insertion'

describe "#sort" do
  it "should return empty array when trying to sort it" do
    array = []
    expect(sort(array)).to eq([])
  end

  it "should proper sort negative integers" do
    array = [-3, -4, -1, -99, -7, -13]
    expect(sort(array)).to eq([-99, -13, -7, -4, -3, -1])
  end

  it "should proper sort positive integers" do
    array = [3, 44, 567, 1, 5, 31, 67]
    expect(sort(array)).to eq([1, 3, 5, 31, 44, 67, 567])
  end
end
