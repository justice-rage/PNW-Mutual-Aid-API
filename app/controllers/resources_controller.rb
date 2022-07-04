class ResourcesController < ApplicationController

  def index
    # @resources = {"quotation": "This api is calling."} => working
    @resources = Resource.all
    json_response(@resources)
  end

  def show
    @resource = Resource.find(params[:id])
    json_response(@resource)
  end

  def create
    @resource = Resource.create!(resource_params)
    json_response(@resource, :created)
  end

  def update
    @resource = Resource.find(params[:id])
    if @resource.update!(resource_params)
      render status: 200, json: {
        message: "Updated Successfully!"
      }
    end
  end

  def destroy
    @resource = Resource.find(params[:id])
    if @resource.destroy
      render status: 200, json: {
        message: "Deleted Successfully!"
      }
    end
  end

  private
  def resource_params
    params.permit(:name, :website, :category, :address)
  end

end
