require "net/http"
require 'json'

module Forecastr
  class Client
    API_URL = "http://api.openweathermap.org/data/2.5/weather?"

    class << self
      def search_by_city(city_name)
        uri = URI(API_URL + "q=" + city_name)
        json = JSON.parse(Net::HTTP.get(uri))
        Forecastr::DataContainer.new(json)
      end

      def search_by_coordinates(lat, lon)
        uri = URI(API_URL + "lat=#{lat}&lon=#{lon}")
        json = JSON.parse(Net::HTTP.get(uri))
        Forecastr::DataContainer.new(json)
      end
    end

  end
end
