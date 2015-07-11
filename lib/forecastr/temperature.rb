module Forecastr
  class Temperature

    def initialize(kelvin)
      @kelvin = kelvin
    end

    def to_celsius
      TemperatureConverter.to_celsius(@kelvin)
    end

    def to_farenheit
      TemperatureConverter.to_farenheit(@kelvin)
    end

    def to_s
      "#{to_celsius} °C"
    end
  end
end
