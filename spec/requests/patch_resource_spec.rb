require 'rails_helper'

describe 'edit a resource route', :type => :request do 

  before do 
    post '/resources/', params: { name: 'NW Bike collective', website: 'www.nwbc.org', category: 'vehicles and maintanence', address: '123 bumblebee' }
    @resource_id = JSON.parse(response.body)['id']
    patch "/resources/#{@resource_id}", params: { :name => 'SE Food Bank', :website => 'www.sefb.org', :category => 'food and sustenance', :address => '456 pickupsticks' }
    get "/resources/#{@resource_id}"
  end

  it 'updates all columns within the table' do 
    puts(response.body)
    expect(JSON.parse(response.body)['name']).to eq('SE Food Bank')
    expect(JSON.parse(response.body)['website']).to eq('www.sefb.org')
    expect(JSON.parse(response.body)['category']).to eq('food and sustenance')
    expect(JSON.parse(response.body)['address']).to eq('456 pickupsticks')
  end

  it 'returns a success message status' do
    patch "/resources/#{@resource_id}", params: { :name => 'SE Food Bank', :website => 'www.sefb.org', :category => 'food and sustenance', :address => '456 pickupsticks' }
    expect(response).to have_http_status(:success)
    expect(JSON.parse(response.body)['message']).to eq('Updated Successfully!')
  end

end
