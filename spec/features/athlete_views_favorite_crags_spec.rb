require 'rails_helper'
include Omnistub

RSpec.feature 'Athlete views favorite crag' do
  scenario 'athlete sees views favorite crags from dashboard' do
    VCR.use_cassette 'activty#display_favorite_crag' do
      athlete = stub_athlete
      crag    = create(:crag, favorite: true, athlete_id: 6 )
      visit '/'
      find('#login').click
      click_on "View favorite climbing areas"
      expect(page).to have_content("Young and the restless")
    end
  end
end
