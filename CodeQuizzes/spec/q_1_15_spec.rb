require 'rspec'
require_relative '../lib/q1_15'

describe "#concat" do
  it "concatenates two integers" do
    expect(42.concat(99)).to eq 4299
  end
end
