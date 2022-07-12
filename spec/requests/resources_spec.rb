require 'swagger_helper'

RSpec.describe 'resources', type: :request do

  path '/resources' do

    get('list resources') do
      response(200, 'successful') do

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    post('create resource') do
      response(201, 'successful') do
        consumes 'application/json'
        parameter name: :resource, in: :body, schema: {
          properties: {
            name: { type: :string },
            website: { type: :string },
            category: { type: :string },
            address: { type: :string }
          },
          required: %w[name website category address]
        }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        let(:resource) { { name: 'test', website: 'post', category: 'please', address: 'ignore' } }
        run_test!
      end
    end
  end

  path '/resources/{id}' do
    # You'll want to customize the parameter types...
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show resource') do
      Resource.destroy_all
      resource = Resource.create!(:name => 'SE Food Bank', :website => 'www.sefb.org', :category => 'food and sustenance', :address => '456 pickupsticks', :id => 123)

      response(200, 'successful') do
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end 
        let(:resource) { { :name => 'SE Food Bank', :website => 'www.sefb.org', :category => 'food and sustenance', :address => '456 pickupsticks'} }
        run_test!
      end
    end

    patch('update resource') do
      Resource.destroy_all
      resource = Resource.create!(:name => 'SE Food Bank', :website => 'www.sefb.org', :category => 'food and sustenance', :address => '456 pickupsticks', :id => 123)
      response(200, 'successful') do
        let(:id) { '123' }
        consumes 'application/json'
        parameter name: :resource, in: :body, schema: {
          properties: {
            name: { type: :string },
            website: { type: :string },
            category: { type: :string },
            address: { type: :string }
          }
        }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        let(:resource) { { :name => 'SE Food Bank', :website => 'www.sefb.org', :category => 'food and sustenance', :address => '123 pickupsticks'} }
        run_test!
      end
    end

    put('update resource') do
      Resource.destroy_all
      resource = Resource.create!(:name => 'SE Food Bank', :website => 'www.sefb.org', :category => 'food and sustenance', :address => '456 pickupsticks', :id => 123)
      response(200, 'successful') do
        let(:id) { '123' }
        consumes 'application/json'
        parameter name: :resource, in: :body, schema: {
          properties: {
            name: { type: :string },
            website: { type: :string },
            category: { type: :string },
            address: { type: :string }
          }
        }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
        let(:resource) { { :name => 'SE Food Bank', :website => 'www.sefb.org', :category => 'food and sustenance', :address => '123 pickupsticks'} }
      end
    end

    delete('delete resource') do
      Resource.destroy_all
      resource = Resource.create!(:name => 'SE Food Bank', :website => 'www.sefb.org', :category => 'food and sustenance', :address => '456 pickupsticks', :id => 123)
      response(200, 'successful') do
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        let(:resource) { {} }
        run_test!
      end
    end
  end
  path '/resources/' do
    # You'll want to customize the parameter types...
    parameter name: 'name', in: :query, type: :string, description: 'name'

    get('show resource') do
      response(200, 'successful') do
        let(:name) { 'test' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end
