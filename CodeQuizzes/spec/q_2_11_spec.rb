require 'rspec'
require '../lib/q2_5'

describe "#index_of_max" do
  it "returns index of largest array element" do
    arr = [1, 99, 10, 104, 5]
    expect(arr.index_of_max).to eq 3
  end
end