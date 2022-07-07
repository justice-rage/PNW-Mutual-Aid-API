require 'rails_helper'

describe 'get a resource route with exception handler', :type => :request do

  before { get '/resources/200' }

  it 'returns a RecordNotFound error' do
    expect(response).to have_http_status(:not_found)
  end

end

describe 'post a resource route with exception handlers', :type => :request do

  before do
    post '/resources', params: { :name => 'goodwill but actually good', :website => "betterwill.com", :category => "housing", :address => nil }
  end

  it 'returns a RecordInvalid error' do
    expect(response).to have_http_status(:unprocessable_entity)
  end
end

