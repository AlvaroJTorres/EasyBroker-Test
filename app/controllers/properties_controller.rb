class PropertiesController < ApplicationController
  before_action :set_client

  def index
    @results = @client.properties.search(limit: 15, search: { statuses: [:published] })
    @results.each do |property|
      puts property.title
    end
  end

  private

  def set_client
    @client = EasyBroker.client
  end
end
