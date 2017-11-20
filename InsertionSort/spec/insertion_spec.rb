require 'rspec'
require_relative '../lib/insertion'

describe "#sort" do
  it "should return empty array when trying to sort it" do
    array = []
    expect(sort(array)).to eq([])
  end
end
