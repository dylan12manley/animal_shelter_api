require 'rails_helper'

describe "post a shelter route", :type => :request do

  before do
    post '/shelters', params: { :shelter_name => 'test_name', :city => 'test_city', :state => 'test_state', :address => 'test_address', :phone_number => 'test_phone_number' }
  end

  it 'returns the author name' do
    expect(JSON.parse(response.body)['shelter_name']).to eq('test_name')
  end

  it 'returns the shelter content' do
    expect(JSON.parse(response.body)['city']).to eq('test_city')
  end

  it 'returns the shelter content' do
    expect(JSON.parse(response.body)['state']).to eq('test_state')
  end

  it 'returns the shelter content' do
    expect(JSON.parse(response.body)['address']).to eq('test_address')
  end

  it 'returns the shelter content' do
    expect(JSON.parse(response.body)['phone_number']).to eq('test_phone_number')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
