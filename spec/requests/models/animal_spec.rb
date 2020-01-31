require 'rails_helper'

describe Animal do
  # it { should belong_to(:shelter) }

  it 'something' do
    shelter = FactoryBot.create(:shelter)
    animal = FactoryBot.create(:animal, :shelter_id => shelter.id)
    expect(animal.name).to(eq('Doggy'))
  end
end
