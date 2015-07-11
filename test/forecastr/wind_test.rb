require 'test_helper'

class Forecastr::WindTest < Minitest::Test

  def setup
    @wind = Forecastr::Wind.new(2.5, -37)
  end

  def test_speed_in_ms
    assert_equal @wind.speed, "2.5 m/s"
  end

  def test_direction
    assert_equal @wind.direction, "NNW"
  end
end
