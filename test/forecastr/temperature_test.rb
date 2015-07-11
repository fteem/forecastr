require 'test_helper'

class Forecastr::TemperatureTest < Minitest::Test

  def setup
    @temperature = Forecastr::Temperature.new(306.11)
  end

  def test_to_celsius
    assert_equal @temperature.to_celsius, 32.96
  end

  def test_to_farenheit
    assert_equal @temperature.to_farenheit, 91.33
  end
end
