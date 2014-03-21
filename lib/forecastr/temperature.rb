module Forecastr
  class Temperature

    def initialize(kelvin)
      @kelvin = kelvin
    end

    def to_celsius
      (@kelvin - 273.15).round(2)
    end

    def to_farenheit
      (1.8 * (@kelvin - 273.15) + 32).round(2)
    end
  end
end
