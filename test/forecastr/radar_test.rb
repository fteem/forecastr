require 'test_helper'

class Forecastr::RadarTest < Minitest::Test

  def setup
    @radar = Forecastr::Radar.new
  end

  def test_find_forecast_for_city
    stub_get("http://api.openweathermap.org/data/2.5/weather?q=London,UK").to_return(:body => fixture('london.json'), :headers => {:content_type => 'application/json; charset=utf-8'})

    forecast = @radar.find_by_city("London,UK")

    assert_equal forecast.city, "London"
    assert_equal forecast.temperature.to_celsius, 7.64
    assert_equal forecast.humidity, 70
    assert_equal forecast.pressure, 1001
  end


  def test_find_forecast_by_coordinates
    stub_get("http://api.openweathermap.org/data/2.5/weather?lat=42.0&lon=21.4333").to_return(:body => fixture('skopje.json'), :headers => {:content_type => 'application/json; charset=utf-8'})

    forecast = @radar.find_by_coordinates(42.000, 21.4333)

    assert_equal forecast.city, "Opština Karpoš"
    assert_equal forecast.temperature.to_celsius, 10.7
    assert_equal forecast.humidity, 70
    assert_equal forecast.pressure, 1021
  end
end
