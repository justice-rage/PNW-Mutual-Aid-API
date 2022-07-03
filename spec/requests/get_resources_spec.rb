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

  it 'returns a resource by id' do 
    @resource = Resource.create!(:name => 'little free blockbuster', :website => 'www.lfbb.org', :category => 'entertainment', :address = '789 feelinfine')
    get "/resources/#{@resource.id}"
    resource_response = []
    resource_response << JSON.parse(response.body)
    expect(resource_response.size).to eq(1)
  end
end


