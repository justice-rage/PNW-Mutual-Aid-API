require 'rails_helper'

describe 'edit a resource route', :type => :request do 
  before do 
    @resource = Resource.create!(name: 'NW Bike collective', website: 'www.nwbc.org', category: 'vehicles and maintanence', address: '123 bumblebee')
    patch '/resources', params: { :name => 'SE Food Bank', :website => 'www.sefb.org', :category => 'food and sustenance', :address => '456 pickupsticks' }
  end

  it 'updates all columns within the table' do 
    get "/resources/#{@resource.id}"
    expect(JSON.parse(response.body)['name']).to eq('SE Food Bank')
    expect(JSON.parse(response.body)['website']).to eq('www.sefb.org')
    expect(JSON.parse(response.body)['category']).to eq('food and sustenance')
    expect(JSON.parse(response.body)['address']).to eq('456 pickupsticks')
  end

end
