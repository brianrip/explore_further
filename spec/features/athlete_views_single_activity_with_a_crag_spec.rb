require 'rails_helper'
include Omnistub

RSpec.feature 'Athlete views an activity' do
  before(:each) do
    stub_athlete
  end
  scenario 'athlete sees activty details' do
    VCR.use_cassette 'activty#actvity_details' do
    visit '/'
    find('#login').click
    visit activities_path
    find('tr', text: "Always fun").click_on("Find climbing areas near activity")

    expect(page).to have_content("Boulder")
    expect(page).to have_content("Always fun")
    expect(page).to have_content("Kudos Given")
    end
  end
end
