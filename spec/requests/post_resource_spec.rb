require 'rails_helper'

describe 'post a resource route', :type => :request do
  before do 
    post '/resources', params: params: { :name => 'NW Bike collective', :website => 'www.nwbc.org', :category => 'vehicles and maintanence', :address => '123 bumblebee' }
  end

  it 'returns the resource name' do 
    expect(JSON.parse(response.body)['name']).to eq('NW Bike collective')
  end

  it 'returns the resource website' do
    expect(JSON.parse(response.body)['website']).to eq('www.nwbc.org')
  end

  it 'returns the resource category' do
    expect(JSON.parse(response.body)['category']).to eq('vehicles and maintanence')
  end
  
  it 'returns the resource address' do
    expect(JSON.parse(response.body)['address']).to eq('123 bumblebee')
  end
end

