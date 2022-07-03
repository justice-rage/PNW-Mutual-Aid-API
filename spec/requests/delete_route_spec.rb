require 'rails_helper'

describe "delete a resource route", :type => :request do 

  before do 
    @resource = Resource.create!(name: 'NW Bike collective', website: 'www.nwbc.org', category: 'vehicles and maintanence', address: '123 bumblebee')
    delete '/resources', params: { :name => 'NW Bike collective', :website => 'www.nwbc.org', :category => 'vehicles and maintanence', :address => '123 bumblebee' }
  end

  it 'deletes the resource' do 
    expect(response).to have_http_status(202)
    expect(JSON.parse(resonse.body)["message"].to eq("This resource has been successfully deleted"))
  end
end

  
  