require 'test_helper'

class Forecastr::ForecastTest < Minitest::Test
  def setup
    json = JSON.parse(fixture('london.json').read)
    @data = Forecastr::DataContainer.new(json)
    @forecast = Forecastr::Forecast.new(@data)
  end

  def test_it_has_a_city
    assert_equal @forecast.city, @data.city
  end

  def test_it_has_time_of_sunrise
    assert_equal @forecast.sunrise, DateTime.strptime(@data.sunrise, '%s')
  end

  def test_time_of_sunset
    assert_equal @forecast.sunset, DateTime.strptime(@data.sunset, '%s')
  end

  def test_longitude
    assert_equal @forecast.longitude, @data.longitude
  end

  def test_latitude
    assert_equal @forecast.latitude, @data.latitude
  end

  def test_current_temperature
    assert_equal @forecast.temperature.to_celsius, Forecastr::TemperatureConverter.to_celsius(@data.temperature)
  end

  def test_minimal_temperature
    assert_equal @forecast.min_temperature.to_celsius, Forecastr::TemperatureConverter.to_celsius(@data.min_temperature)
  end

  def test_maximal_temperature
    assert_equal @forecast.max_temperature.to_celsius, Forecastr::TemperatureConverter.to_celsius(@data.max_temperature)
  end

  def test_pressure
    assert_equal @forecast.pressure, 1001
  end

  def test_humidity
    assert_equal @forecast.humidity, 70
  end

  def test_cloud_coverage
    assert_equal @forecast.clouds, 92
  end

  def test_wind
    assert_respond_to @forecast, :wind
    assert_kind_of Forecastr::Wind, @forecast.wind
  end
end
