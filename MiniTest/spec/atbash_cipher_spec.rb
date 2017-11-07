require 'rspec'
require_relative '../lib/atbash_cipher'

describe "#encode" do
  it "should proper encode 2 letters strings" do
    expect(Atbash.encode('no')).to eq 'ml'
  end

  it "should proper encode short strings" do
    expect(Atbash.encode('yes')).to eq 'bvh'
  end

  it "should proper encode capital letters" do
    expect(Atbash.encode('OMG')).to eq 'lnt'
  end

  it "should proper encode string with spaces" do
    expect(Atbash.encode('O M G')).to eq 'lnt'
  end

  it "should proper encode long word" do
    expect(Atbash.encode('mindblowingly')).to eq 'nrmwy oldrm tob'
  end

  it "should proper encode strings with numbers" do
    expect(Atbash.encode('Testing, 1 2 3, testing.')).
    to eq 'gvhgr mt123 gvhgr mt'
  end

  it "should proper encode sentences" do
    expect(Atbash.encode('Truth is fiction.')).to eq 'gifgs rhurx grlm'
  end

  it "should proper encode long sentences" do
    expect(Atbash.encode('The quick brown fox jumps over the lazy dog.')).
    to eq 'gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt'
  end

end
