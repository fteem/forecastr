require "net/http"
require 'json'

module Forecastr
  class Radar
    class << self
      def find_by_city(city_name)
        radar = new
        radar.find_by_city(city_name)
      end

      def find_by_coordinates(lat, lon)
        radar = new
        radar.find_by_coordinates(lat, lon)
      end
    end

    def find_by_city(name)
      data = Forecastr::Client.search_by_city(name)
      Forecastr::Forecast.new(data)
    end

    def find_by_coordinates(lat, lon)
      data = Forecastr::Client.search_by_coordinates(lat, lon)
      Forecastr::Forecast.new(data)
    end

  end
end
