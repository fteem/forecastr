require "net/http"
require 'json'

module Forecastr
  class Client
    class << self
      def search_by_city(city_name)
        uri = UriBuilder.by_city(city_name)
        json = JSON.parse(Net::HTTP.get(uri))
        Forecastr::DataContainer.new(json)
      end

      def search_by_coordinates(latitude, longitude)
        uri = UriBuilder.by_coordinates(latitude, longitude)
        json = JSON.parse(Net::HTTP.get(uri))
        Forecastr::DataContainer.new(json)
      end
    end

  end
end
