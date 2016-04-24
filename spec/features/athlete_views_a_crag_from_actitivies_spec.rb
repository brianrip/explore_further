require 'rails_helper'
include Omnistub



RSpec.feature 'Athlete views crag info' do
  before(:each) do
    stub_athlete
  end
  scenario 'and sees an activity with a crag' do
    VCR.use_cassette 'activity#all_activities' do
    visit '/'
    find('#login').click
    visit activities_path
    expect(page).to have_content("View nearby climbing areas")
    find('tr', text: "Always fun").click_link("View nearby climbing areas")

    end
  end
end
