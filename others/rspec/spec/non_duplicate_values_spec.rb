require 'spec_helper'
require 'non_duplicate_values'

# rspec --init

RSpec.describe 'DuplicateValues' do
  it 'non duplicate values' do
    expect(non_duplicate([1, 2, 2, 3, 3, 4, 5])).to eq([1, 4, 5])
    expect(non_duplicate([1, 1, 2, 3, 3, 4, 5, 5])).to eq([2, 4])
    expect(non_duplicate([1, -1, 2, -3, -3])).to eq([1, -1, 2])
  end
end
