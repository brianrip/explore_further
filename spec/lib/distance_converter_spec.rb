require 'rails_helper'

RSpec.describe MilesConverter do
  describe 'to_latitude' do
    it 'returns correct latitude when given a number in miles' do

      miles = 1.0

      degrees = MilesConverter.convert(miles)

      expect(degrees).to eq 0.0145

    end
  end
end
