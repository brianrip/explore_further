require 'rails_helper'
include Omnistub

RSpec.feature 'athlete sees all their activities' do
  before(:each) do
      stub_athlete
  end
  scenario 'athlete visits all activities' do
    VCR.use_cassette "activity#all_activities" do
      visit '/'
      find("#login").click
      visit activities_path
      expect(page).to have_link("Drizzle Tass")
      expect(page).to have_link("Afternoon Run")
    end
  end
end
