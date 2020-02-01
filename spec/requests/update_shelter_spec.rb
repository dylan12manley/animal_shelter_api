require 'rails_helper'

describe "updates shelter paramaters", :type => :request do
  context 'valid request' do
  before do
    shelter = Shelter.create!(
    shelter_name: Faker::Address.community,
    city: Faker::Address.city,
    state: Faker::Address.state,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone)
    put "/shelters/#{shelter.id}", params: { shelter_name: "new name",
    city: "new city",
    state: "new state",
    address: "new address",
    phone_number: "111"}
  end

  it 'returns success message' do
    expect(JSON.parse(response.body)["message"]).to eq 'This shelter has been updated successfully.'
  end

  it 'returns status code 200' do
    expect(response).to have_http_status 200
  end
end

end
