require 'rails_helper'

# describe "post a animal route", :type => :request do
  # context 'valid request' do
  # before do
  #   post '/shelters', params: { :shelter_name => 'test_name', :city => 'test_city', :state => 'test_state', :address => 'test_address', :phone_number => 'test_phone_number' }
  #   post '/shelters/3/animals', params: { :name => 'test_name', :species => 'test_species', :breed => 'test_breed', :sex => 'test_sex', :status => 'test_status', :shelter_id => 3 }
  # end
  #
  # it 'returns the author name' do
  #   expect(JSON.parse(response.body)['name']).to eq('test_name')
  # end
  #
  # it 'returns the animal content' do
  #   expect(JSON.parse(response.body)['species']).to eq('test_species')
  # end
  #
  # it 'returns the animal content' do
  #   expect(JSON.parse(response.body)['breed']).to eq('test_breed')
  # end
  #
  # it 'returns the animal content' do
  #   expect(JSON.parse(response.body)['sex']).to eq('test_sex')
  # end
  #
  # it 'returns the animal content' do
  #   expect(JSON.parse(response.body)['status']).to eq('test_status')
  # end
  #
  # it 'returns the animal content' do
  #   expect(JSON.parse(response.body)['shelter_id']).to eq(3)
  # end
  #
  # it 'returns a created status' do
  #   expect(response).to have_http_status(:created)
  # end
# end
# context 'invalid request' do
#   before do
#     post '/shelters/2/animals'
#   end
#
#   it 'returs an error message' do
#     expect(JSON.parse(response.body)['message']).to eq "shelter must exist"
#   end
#   it 'returns status code 404' do
#     expect(response).to have_http_status 404
#   end
# end
# end
