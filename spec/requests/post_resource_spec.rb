require 'rails_helper'

describe 'post a resource route', :type => :request do
  before do 
    post '/resources', params: { :name => 'NW Bike collective', :website => 'www.nwbc.org', :category => 'vehicles and maintanence', :address => '123 bumblebee' }
  end

  it 'returns a created resource' do 
    expect(JSON.parse(response.body)['name']).to eq('NW Bike collective')
    expect(JSON.parse(response.body)['website']).to eq('www.nwbc.org')
    expect(JSON.parse(response.body)['category']).to eq('vehicles and maintanence')
    expect(JSON.parse(response.body)['address']).to eq('123 bumblebee')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end

