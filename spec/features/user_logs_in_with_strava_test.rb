require 'rails_helper'

RSpec.feature "UserLogsInWithSpotify", type: :feature do
  before(:each) do
    stub_user
  end
  scenario 'user visits root url' do
    visit '/'
    expect(page.status_code).to eq(200)
    find("#login").click
    expect(page).to have_content "brian,s Activities"
    expect(page).to have_content "rippeto@gmail.com"
    expect(page).to have_content "Logout"
    expect(current_path).to eq "/dashboard"
  end

end
