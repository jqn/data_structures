# this version is meant to be pasted into Coderpad.io

# The idea is that there is an alien language that uses the same letters as English (or a subset of the English letters), but the order is different.
# for example, their alphabet might me `zyxwvutsrqponmlkjihgfedcba` (simply ours reversed), or it might be a much different order (e.g. `('a'..'z').to_a.shuffle`).
# The problem is that, given a dictionary of the language, which is sorted using the alien alphabet ordering, to determine what the order is by comparing the words in the dictionary

require 'rspec'
require './alphabet_builder.rb'

RSpec.describe AlphabetBuilder do
  context 'with one word' do
    let(:words) { ['a'] }
    it { expect(AlphabetBuilder.new(words).build).to eq 'a' }
  end

  context 'with a single-letter alphabet' do
    let(:words) { ['f', 'fff', 'ff'] }
    it { expect(AlphabetBuilder.new(words).build).to eq 'f' }
  end

  context 'with a two-letter alphabet' do
    let(:words) { ['zz', 'za'] }
    it { expect(AlphabetBuilder.new(words).build).to eq 'za' }
  end

  context 'with a three-letter alphabet' do
    let(:words) { ['a', 'aa', 'ba', 'cab'] }
    it { expect(AlphabetBuilder.new(words).build).to eq 'abc' }
  end

  context 'with a four-letter alphabet' do
    let(:words) { ['xzz', 'zxyw', 'zxyz', 'yzx', 'yzw'] }
    it { expect(AlphabetBuilder.new(words).build).to eq 'xwzy' }
  end
end
