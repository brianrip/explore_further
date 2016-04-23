require 'rails_helper'

RSpec.describe Athlete, type: :model do
  it { should validate_presence_of(:firstname) }
  it { should validate_presence_of(:lastname) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:token) }
  it { should validate_presence_of(:uid) }
end
