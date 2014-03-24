module Forecastr
  class Forecast

    attr_reader :city, :longitude, :latitude, :temperature,
                :pressure, :humidity, :min_temperature,
                :max_temperature, :clouds, :wind

    def initialize(data)
      @city = data.city
      @longitude = data.longitude
      @latitude = data.latitude
      @temperature = Forecastr::Temperature.new(data.temperature)
      @pressure = data.pressure
      @humidity = data.humidity
      @min_temperature = Forecastr::Temperature.new(data.min_temperature)
      @max_temperature = Forecastr::Temperature.new(data.max_temperature)
      @clouds = data.clouds
      @wind = Forecastr::Wind.new(data.wind_speed, data.wind_angle)
    end

  end
end
