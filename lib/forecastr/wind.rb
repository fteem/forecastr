module Forecastr
  class Wind
    DIRECTIONS = ["N","NNE","NE","ENE","E","ESE", "SE", "SSE","S","SSW","SW","WSW","W","WNW","NW","NNW"]

    attr_reader :speed, :direction

    def initialize(json)
      @json = json
    end

    def speed
      "#{@json['wind']['speed']} m/s"
    end

    def direction
      degrees = @json['wind']['deg']
      val = ((degrees/22.5) + 0.5).to_i
      DIRECTIONS[val % 16]
    end
  end
end
