require 'rails_helper'

describe 'get a resource route with exception handler', :type => :request do

  before { get '/resources/200' }

  it 'returns a RecordNotFound error' do
    expect(response).to have_http_status(:not_found)
  end

end

