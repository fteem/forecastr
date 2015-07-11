require 'test_helper'

class Forecastr::DataContainerTest < Minitest::Test

  def setup
    json = JSON.parse(fixture('skopje.json').read)
    @container = Forecastr::DataContainer.new(json)
  end

  def test_mapping_from_json
    assert_equal @container.city, "Opština Karpoš"
    assert_equal @container.longitude, 21.43
    assert_equal @container.latitude, 42
    assert_equal @container.temperature, 283.85
    assert_equal @container.pressure, 1021
    assert_equal @container.humidity, 70
    assert_equal @container.min_temperature, 280.15
    assert_equal @container.max_temperature, 285.93
    assert_equal @container.clouds, 0
    assert_equal @container.wind_speed, 1.16
    assert_equal @container.wind_angle, 128.501
    assert_equal @container.sunrise, '1395376499'
    assert_equal @container.sunset, '1395420461'
  end
end
