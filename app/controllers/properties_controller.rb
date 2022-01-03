class PropertiesController < ApplicationController
  before_action :set_client

  def index
    results = @client.properties.search(limit: 15, search: { statuses: [:published] })
    @properties = results.response.content
  end

  def show
    @property = @client.properties.find(params[:id])
    p @property
  end

  private

  def set_client
    @client = EasyBroker.client
  end
end
