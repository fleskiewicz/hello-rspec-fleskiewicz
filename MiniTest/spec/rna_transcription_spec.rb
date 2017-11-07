require 'rspec'
require_relative '../lib/rna_transcription'

describe "#of_dna" do
  it "should return guanine from cytosine" do
    expect(Complement.of_dna("C")).to eql("G")
  end

  it "should return cytosine from guanine" do
    expect(Complement.of_dna("G")).to eql("C")
  end

  it "should return adenine from thymine" do
    expect(Complement.of_dna("T")).to eql("A")
  end

  it "should return uracil from adenine" do
    expect(Complement.of_dna("A")).to eql("U")
  end

  it "should return rna complement" do
    expect(Complement.of_dna("ACGTGGTCTTAA")).to eql("UGCACCAGAAUU")
  end

  it "should correctly handle invalit input rna instead of dna" do
    expect(Complement.of_dna("U")).to eql('')
  end

  it "should correctly handle completely invalid dna input" do
    expect(Complement.of_dna("XXX")).to eql('')
  end

  it "should correctly handle partially invalid dna input" do
    expect(Complement.of_dna("ACGTXXXCTTAA")).to eql('')
  end

  it "returns 4 for 'BookKeeping::VERSION'" do
    expect(BookKeeping::VERSION) == 4
  end

end
