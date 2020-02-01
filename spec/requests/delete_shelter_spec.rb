require 'rails_helper'

describe "deletes shelters route", :type => :request do
  context 'valid request' do
  before do
    shelter = Shelter.create!(
    shelter_name: Faker::Address.community,
    city: Faker::Address.city,
    state: Faker::Address.state,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone)
    delete "/shelters/#{shelter.id}"
  end

  it 'returns success message' do
    expect(JSON.parse(response.body)["message"]).to eq "This shelter has been destroyed"
  end

  it 'returns status code 200' do
    expect(response).to have_http_status 200
  end
end

context 'invalid request' do
  before {delete 'shelters/id'}
  it 'returs an error message' do
    expect(JSON.parse(response.body)['message']).to eq "couldn\'t find shelter with \'id\'=id"
  end
  it 'returns status code 404' do
    expect(response).to have_http_status 404
  end
end
end
