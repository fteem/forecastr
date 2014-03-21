require "net/http"
require 'json'

module Forecastr
  class Radar
    API_URL = "http://api.openweathermap.org/data/2.5/weather?"

    class << self
      def find_by_city(city_name)
        radar = new
        radar.find_by_city(city_name)
      end
    end

    def find_by_city(city_name)
      uri = URI(API_URL + "q=" + city_name)
      @json = JSON.parse(Net::HTTP.get(uri))
      Forecastr::Forecast.new(@json)
    end

    def find_by_coordinates(lat, lon)
      uri = URI(API_URL + "lat=#{lat}&lon=#{lon}")
      @json = JSON.parse(Net::HTTP.get(uri))
      Forecastr::Forecast.new(@json)
    end

  end
end
