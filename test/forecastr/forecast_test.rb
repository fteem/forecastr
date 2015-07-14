require 'test_helper'

class Forecastr::ForecastTest < Minitest::Test
  def setup
    json = JSON.parse(fixture('london.json').read)
    @data = Forecastr::DataContainer.new(json)
    @forecast = Forecastr::Forecast.new(@data)
  end

  def test_it_has_a_city
    assert_equal @data.city, @forecast.city
  end

  def test_it_has_time_of_sunrise
    assert_equal DateTime.strptime(@data.sunrise, '%s'), @forecast.sunrise
  end

  def test_time_of_sunset
    assert_equal DateTime.strptime(@data.sunset, '%s'), @forecast.sunset
  end

  def test_longitude
    assert_equal @data.longitude, @forecast.longitude
  end

  def test_latitude
    assert_equal @data.latitude, @forecast.latitude 
  end

  def test_current_temperature
    assert_equal Forecastr::TemperatureConverter.to_celsius(@data.temperature), @forecast.temperature.to_celsius 
  end

  def test_minimal_temperature
    assert_equal Forecastr::TemperatureConverter.to_celsius(@data.min_temperature), @forecast.min_temperature.to_celsius
  end

  def test_maximal_temperature
    assert_equal Forecastr::TemperatureConverter.to_celsius(@data.max_temperature), @forecast.max_temperature.to_celsius
  end

  def test_pressure
    assert_equal 1001, @forecast.pressure
  end

  def test_humidity
    assert_equal 70, @forecast.humidity
  end

  def test_cloud_coverage
    assert_equal 92, @forecast.clouds
  end

  def test_wind
    assert_respond_to @forecast, :wind
    assert_kind_of Forecastr::Wind, @forecast.wind
  end
end
