require 'rails_helper'
include Omnistub

RSpec.feature 'Athlete favorites a crag' do
  before(:each) do
    stub_athlete
  end
  scenario 'athlete adds a crag to favorites' do
    VCR.use_cassette 'activty#favorite_crag' do
      visit '/'
      find('#login').click
      visit activities_path
      expect(page).to have_content("Find climbing areas near activity")
      find('tr', text: "Always fun").click_link("Find climbing areas near activity")
      fill_in "distance", with: 1
      click_on "Explore"
      expect(page).to have_content("Boulder")
      expect(page).to have_content("Colorado")
      expect(page).to have_content("Ride")
      expect(page).to have_content("4")
      expect(page).to have_content("Rock Island 2")
    end
  end
end
