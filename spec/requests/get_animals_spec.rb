require 'rails_helper'

describe 'get all animals', :type => :request do
  context 'valid request' do
    before do
      @shelter = Shelter.create!(
      shelter_name: Faker::Address.community,
      city: Faker::Address.city,
      state: Faker::Address.state,
      address: Faker::Address.street_address,
      phone_number: Faker::PhoneNumber.cell_phone)

      @shelter.animals.new(
      name: Faker::Creature::Cat.name,
      species: "Cat",
      breed: Faker::Creature::Cat.breed,
      sex: "Female",
      age: rand(14),
      status: "available",
      shelter_id: 2)
      get '/shelters/2/animals'
    end

    # it 'returns all animals' do
    #     expect(JSON.parse(response.body).size).to eq 0
    # end
  it 'returns status code 200' do
      expect(response).to have_http_status 200
  end
end
end
