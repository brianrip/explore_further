require 'rails_helper'
include Omnistub

RSpec.feature 'Athlete views crag info' do
  before(:each) do
    stub_athlete
  end
  scenario 'and sees an activity with a crag' do
    VCR.use_cassette 'activity#view_crags' do
    visit '/'
    find('#login').click
    visit activities_path
    expect(page).to have_content("Find climbing areas near activity")
    find('tr', text: "Always fun").click_link("Find climbing areas near activity")
    end
  end
end
