require 'rails_helper'
include Omnistub

RSpec.feature 'Athlete views favorite crag' do
  before(:each) do
    stub_athlete
  end
  scenario 'athlete sees views favorite crags from dashboard' do
    VCR.use_cassette 'activty#display_favorite_crag' do
      crag = create(:crag)

      visit '/'
      find('#login').click

      click_on "View favorite climbing areas"

      expect(page).to have_content
    end
  end
end
