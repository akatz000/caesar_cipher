require 'rspec'
require_relative 'code.rb'

RSpec.describe "caesar_cipher" do
  it "passes examples in description" do
    expect(caesar_cipher('a', 2)).to eq('c')
    expect(caesar_cipher('z', 2)).to eq('b')
    expect(caesar_cipher('Caesar', 2)).to eq('Ecguct')
  end

  it "handles empty strings properly" do
    expect(caesar_cipher(' ', 3)).to eq(' ')
  end

  it "handles capitalizations properly" do
    expect(caesar_cipher('aAbB', 2)).to eq('cCdD')
  end

  it "handles end of the alphabet properly" do
    expect(caesar_cipher('agzZ', 4)).to eq('ekdD')
  end

  it "handles shifts greater than alphabet length properly" do
    expect(caesar_cipher('zZZZz', 26)).to eq('zZZZz')
    expect(caesar_cipher('aAAAa', 27)).to eq('bBBBb')
    expect(caesar_cipher('aAAAa', 30)).to eq('eEEEe')
  end
end
