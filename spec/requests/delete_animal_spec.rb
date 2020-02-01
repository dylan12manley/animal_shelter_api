require 'rails_helper'

describe "deletes animals route", :type => :request do
  context 'valid request' do
  before do
    @shelter = Shelter.create!(
    shelter_name: Faker::Address.community,
    city: Faker::Address.city,
    state: Faker::Address.state,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone)

    @shelter.animals.new(
    name: "Mittens",
    species: "Cat",
    breed: "Long Hair",
    sex: "Female",
    age: 2,
    status: "available",
    shelter_id: 3)
    delete "/shelters/2/animals/1"
  end

  # it 'returns success message' do
  #   expect(JSON.parse(response.body)["message"]).to eq 'This animal has been destoryed.'
  # end
  #
  # it 'returns status code 200' do
  #   expect(response).to have_http_status 200
  # end
end

context 'invalid request' do
  before do
    delete '/shelters/2/animals/0'
  end

  it 'returs an error message' do
    expect(JSON.parse(response.body)['message']).to eq "Couldn\'t find Animal with \'id\'=0"
  end
  it 'returns status code 404' do
    expect(response).to have_http_status 404
  end
end
end
