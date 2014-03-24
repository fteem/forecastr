module Forecastr
  class Wind
    DIRECTIONS = ["N","NNE","NE","ENE","E","ESE", "SE", "SSE","S","SSW","SW","WSW","W","WNW","NW","NNW"]

    attr_reader :speed, :direction

    def initialize(speed, angle)
      @speed = speed
      @angle = angle
    end

    def speed
      "#{@speed} m/s"
    end

    def direction
      val = ((@angle/22.5) + 0.5).to_i
      DIRECTIONS[val % 16]
    end

    def to_s
      "#{speed} #{direction}"
    end
  end
end
