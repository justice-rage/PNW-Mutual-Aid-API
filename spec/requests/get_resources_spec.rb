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

  it 'returns a resource by id' do
    @resource = Resource.create!(:name => 'goodwill but actually good', :website => "betterwill.com", :category => "housing", :address => "goodwill ave")
    get "/resources/#{@resource.id}"
    resource_response = []
    resource_response << JSON.parse(response.body)
    expect(resource_response.size).to eq(1)
  end

end

describe "get resource by name" do

  before do
    post '/resources', params: { :name => 'goodwill but actually good', :website => "betterwill.com", :category => "housing", :address => "goodwill ave"}
  end
  
  it 'searches resource by name' do
    get '/resources?name=good'
    puts response.body
    expect(JSON.parse(response.body)[0]['name']).to eq('goodwill but actually good')
  end
end


