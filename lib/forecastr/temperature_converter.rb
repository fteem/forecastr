module Forecastr
  class TemperatureConverter
    class << self
      def to_celsius kelvins
        (kelvins - 273.15).round(2)
      end

      def to_farenheit kelvins
        (1.8 * (kelvins - 273.15) + 32).round(2)
      end
    end
  end
end
