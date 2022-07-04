require 'rails_helper'

describe "delete a resource route", :type => :request do 

  before do 
    post '/resources', params: { :name => 'NW Bike collective', :website => 'www.nwbc.org', :category => 'vehicles and maintanence', :address => '123 bumblebee' }
    @resource_id = JSON.parse(response.body)['id']
    delete "/resources/#{@resource_id}"
  end

  it 'returns a success status message' do 
    expect(response).to have_http_status(200)
    expect(JSON.parse(response.body)['message']).to eq('Deleted Successfully!')
  end
end 

  
  