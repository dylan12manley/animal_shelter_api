require 'rails_helper'

describe Shelter do
  it 'is private by default' do
    shelter = FactoryBot.create(:shelter)
    shelter.city.should eq 'Portland'
  end
  # it { should have_many(:animals) }
end
