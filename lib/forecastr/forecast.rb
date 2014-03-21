module Forecastr
  class Forecast

    attr_reader :city, :longitude, :latitude, :temperature,
                :pressure, :humidity, :min_temperature,
                :max_temperature, :clouds, :wind

    def initialize(json)
      @city = json['name']
      @longitude = json['coord']['lon']
      @latitude = json['coord']['lat']
      @temperature = Forecastr::Temperature.new(json['main']['temp'])
      @pressure = json['main']['pressure']
      @humidity = json['main']['humidity']
      @min_temperature = Forecastr::Temperature.new(json['main']['temp_min'])
      @max_temperature = Forecastr::Temperature.new(json['main']['temp_max'])
      @clouds = json['clouds']['all']
      @wind = Forecastr::Wind.new(json)
    end

  end
end
