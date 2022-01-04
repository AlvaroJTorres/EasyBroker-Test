require 'httparty'

class PropertiesController < ApplicationController
  before_action :set_client

  def index
    @results = @client.properties.search(limit: 15, search: { statuses: [:published] })
    @properties = @results.response.content
  end

  def show
    @property = @client.properties.find(params[:id])
  end

  def create_contact
    contact_options = {
      headers: {
        'Content-Type' => 'application/json',
        'X-Authorization' => ENV['API_KEY']
      },
      body: define_body(params).to_json
    }

    @response = HTTParty.post('https://api.stagingeb.com/v1/contact_requests', contact_options)

    redirect_to property_path(params[:id])
  end

  private

  def set_client
    @client = EasyBroker.client
  end

  def define_body(params)
    {
      name: params[:name],
      phone: params[:phone],
      email: params[:email],
      property_id: params[:id],
      message: params[:message],
      source: params[:source]
    }
  end
end
