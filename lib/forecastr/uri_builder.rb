module Forecastr
  class UriBuilder
    API_URL = "http://api.openweathermap.org/data/2.5/weather?"

    class << self
      def by_city name
        URI(API_URL + "q=" + name)
      end

      def by_coordinates latitude, longitude
        URI(API_URL + "lat=#{latitude}&lon=#{longitude}")
      end
    end
  end
end
