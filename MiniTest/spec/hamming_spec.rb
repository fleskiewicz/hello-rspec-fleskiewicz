require 'rspec'
require_relative '../lib/hamming'

describe "#compute" do
  it "should return 0 from empty strands" do
    expect(Hamming.compute('', '')).to eql(0)
  end

  it "should return 0 from identical strands" do
    expect(Hamming.compute('A', 'A')).to eql(0)
  end

  it "should return 0 from long identical strands" do
    expect(Hamming.compute('GGACTGA', 'GGACTGA')).to eql(0)
  end

  it "should return complete distance from single nucleotide strands" do
    expect(Hamming.compute('A', 'G')).to eql(1)
  end

  it "should return complete distance from small strands" do
    expect(Hamming.compute('AG', 'CT')).to eql(2)
  end

  it "should return small distance" do
    expect(Hamming.compute('GGACG', 'GGTCG')).to eq 1
  end

  it "should return small distance in long strands" do
    expect(Hamming.compute('ACCAGGG', 'ACTATGG')).to eq 2
  end

  it "should return non unique character in first strand" do
    expect(Hamming.compute('AGA', 'AGG')).to eq 1
  end

  it "should return non unique character in second strand" do
    expect(Hamming.compute('AGG', 'AGA')).to eq 1
  end

  it "should return same nucleotides in different positions" do
    expect(Hamming.compute('TAG', 'GAT')).to eq 2
  end

  it "should return large distance" do
    expect(Hamming.compute('GATACA', 'GCATAA')).to eq 4
  end

  it "should return large distance in off by one strand" do
    expect(Hamming.compute('GGACGGATTCTG', 'AGGACGGATTCT')).to eq 9
  end

  it "should raise ArgumentError when first strand longer" do
    expect { (Hamming.compute('AATG', 'AAA')) }.to raise_error(ArgumentError)
  end

  it "should raise ArgumentError when second strand longer" do
    expect { (Hamming.compute('ATA', 'AGTG')) }.to raise_error(ArgumentError)
  end



  it "returns 3 for 'BookKeeping::VERSION'" do
    expect(BookKeeping::VERSION) == 3
  end
end
