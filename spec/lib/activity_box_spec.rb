require 'rails_helper'

RSpec.describe ActivityBox do
  describe '#build_box' do
    it 'returns four lat long points from an activity start location' do

      activity = create(:activity, start_latitude: 30, start_longitude: -100)
      distance = 0.01

      box = ActivityBox.build_box(activity, distance)

      expect(box).to eq([29.99, -100.01, 30.01, -99.99])
    end
  end
end
