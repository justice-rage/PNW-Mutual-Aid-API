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

  it 'returns 10 resources at a time' do
    get '/resources?page=1'
    expect(JSON.parse(response.body).size).to eq(10)
  end

end


