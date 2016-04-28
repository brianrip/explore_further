require 'rails_helper'
include Omnistub

RSpec.feature 'Athlete views crag info' do
  before(:each) do
    stub_athlete
  end
  scenario 'and sees an activity with a crag' do
    VCR.use_cassette 'activity#route_details' do
    visit '/'
    find('#login').click
    visit activities_path
    find('tr', text: "Always fun").click_link("Find climbing areas near activity")
    fill_in "distance", with: 1
    click_on "Explore"
    # find('tr', text: "Bummers Rock").click_link("View route details")
    end
  end
end
