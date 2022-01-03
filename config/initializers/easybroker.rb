require 'easy_broker'

EasyBroker.configure do |config|
  config.api_key = ENV['API_KEY']

  config.api_root_url = 'https://api.stagingeb.com/v1/'
end