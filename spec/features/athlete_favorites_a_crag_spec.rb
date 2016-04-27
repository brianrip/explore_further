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
      expect(page).to have_content("View nearby climbing areas")
      find('tr', text: "Always fun").click_link("View Details")

      click_on "View nearby climbing areas"
      expect(page).to have_content("Favorite")
  save_and_open_page
    end
  end
end
