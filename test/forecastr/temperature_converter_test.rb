require 'test_helper'

class Forecastr::TemperatureConverterTest < Minitest::Test
  
  def test_celsius_conversion
    assert_equal Forecastr::TemperatureConverter.to_celsius(273.15), 0
  end

  def test_farenheit_conversion
    assert_equal Forecastr::TemperatureConverter.to_farenheit(278), 40.73
  end
end
