require 'rails_helper'

describe "get all resources route", :type => :request do 
  let!(:resources) {FactoryBot.create_list(:resource, 25)}

  before { get '/resources' }

  it 'returns all resources' do 
    expect(JSON.parse(response.body).size). to eq(25)
  end

  it 'returns status code 200' do 
    expect(response).to have_http_status(:success)
  end


end


