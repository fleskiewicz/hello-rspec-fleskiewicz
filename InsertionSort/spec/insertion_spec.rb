require 'rspec'
require_relative '../lib/insertion'

describe "#sort_asc" do
  it "should return empty array when trying to ascending sort it" do
    array = []
    expect(sort_asc(array))
      .to eq([])
  end

  it "should proper ascending sort negative integers" do
    array = [-3, -4, -1, -99, -7, -13]
    expect(sort_asc(array))
      .to eq([-99, -13, -7, -4, -3, -1])
  end

  it "should proper ascending sort positive integers" do
    array = [3, 44, 567, 1, 5, 31, 67]
    expect(sort_asc(array))
      .to eq([1, 3, 5, 31, 44, 67, 567])
  end

  it "should proper ascending sort negative decimals" do
    array = [-9.394, -9.393, -9.19, -1.4956, -1.4954, -23.3, -111.111]
    expect(sort_asc(array))
      .to eq([-111.111, -23.3, -9.394, -9.393, -9.19, -1.4956, -1.4954])
  end

  it "should proper ascending sort positive decimals" do
    array = [3.9455, 2.12, 2.02, 9.346, 0.312, 934.40, 9583.11, 444.111]
    expect(sort_asc(array))
      .to eq([0.312, 2.02, 2.12, 3.9455, 9.346, 444.111, 934.40, 9583.11])
  end

  it "should return one element array when trying to ascending sort it" do
    array = [3]
    expect(sort_asc(array))
      .to eq([3])
  end

  it "should proper ascending sort two positive integers" do
    array = [5, 3]
    expect(sort_asc(array))
      .to eq([3, 5])
  end

  it "should proper ascending sort two negative integers" do
    array = [-22, -57]
    expect(sort_asc(array))
      .to eq([-57, -22])
  end

  it "should proper ascending sort mixed integers" do
    array = [-567, 22, -1, 99, 32, -12, -49, -33]
    expect(sort_asc(array))
      .to eq([-567, -49, -33, -12, -1, 22, 32, 99])
  end

  it "should proper ascending sort mixed integers and decimals" do
    array = [-33, 22.192, 93.11, -9.01, 403.22, -1.39]
    expect(sort_asc(array))
      .to eq([-33, -9.01, -1.39, 22.192, 93.11, 403.22])
  end

  it "should proper ascending sort small letters array" do
    array = ['y', 'l', 's', 'c', 'g']
    expect(sort_asc(array))
      .to eq(['c', 'g', 'l', 's', 'y'])
  end

  it "should proper ascending sort capital letters array" do
    array = ['C', 'G', 'Z', 'A', 'B']
    expect(sort_asc(array))
      .to eq(['A', 'B', 'C', 'G', 'Z'])
  end
end

describe "#sort_desc" do
  it "should return empty array when trying to descending sort it" do
    array = []
    expect(sort_desc(array))
      .to eq([])
  end

  it "should proper descending sort negative integers" do
    array = [-3, -4, -1, -99, -7, -13]
    expect(sort_desc(array))
      .to eq([-1, -3, -4, -7, -13, -99])
  end

  it "should proper descending sort positive integers" do
    array = [3, 44, 567, 1, 5, 31, 67]
    expect(sort_desc(array))
      .to eq([567, 67, 44, 31, 5, 3, 1])
  end

  it "should proper descending sort negative decimals" do
    array = [-9.394, -9.393, -9.19, -1.4956, -1.4954, -23.3, -111.111]
    expect(sort_desc(array))
      .to eq([-1.4954, -1.4956, -9.19, -9.393, -9.394, -23.3, -111.111])
  end

  it "should proper descending sort positive decimals" do
    array = [3.9455, 2.12, 2.02, 9.346, 0.312, 934.40, 9583.11, 444.111]
    expect(sort_desc(array))
      .to eq([9583.11, 934.40, 444.111, 9.346, 3.9455, 2.12, 2.02, 0.312])
  end

  it "should return one element array when trying to descending sort it" do
    array = [3]
    expect(sort_desc(array))
      .to eq([3])
  end

  it "should proper descending sort two positive integers" do
    array = [5, 3]
    expect(sort_desc(array))
      .to eq([5, 3])
  end

  it "should proper descending sort two negative integers" do
    array = [-22, -57]
    expect(sort_desc(array))
      .to eq([-22, -57])
  end

  it "should proper descending sort mixed integers" do
    array = [-567, 22, -1, 99, 32, -12, -49, -33]
    expect(sort_desc(array))
      .to eq([99, 32, 22, -1, -12, -33, -49, -567])
  end

  it "should proper descending sort mixed integers and decimals" do
    array = [-33, 22.192, 93.11, -9.01, 403.22, -1.39]
    expect(sort_desc(array))
      .to eq([403.22, 93.11, 22.192, -1.39, -9.01, -33])
  end

  it "should proper descending sort small letters array" do
    array = ['y', 'l', 's', 'c', 'g']
    expect(sort_desc(array))
      .to eq(['y', 's', 'l', 'g', 'c'])
  end

  it "should proper descending sort capital letters array" do
    array = ['C', 'G', 'Z', 'A', 'B']
    expect(sort_desc(array))
      .to eq(['Z', 'G', 'C', 'B', 'A'])
  end
end
