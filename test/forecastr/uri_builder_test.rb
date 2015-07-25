require 'test_helper'

class Forecastr::UriBuilderTest < Minitest::Test
  def test_build_by_city_name
    assert_equal Forecastr::UriBuilder::API_URL + "q=London,UK", Forecastr::UriBuilder.by_city("London,UK").to_s
  end

  def test_build_by_coordinates
    assert_equal Forecastr::UriBuilder::API_URL + "lat=1.1&lon=2.2", Forecastr::UriBuilder.by_coordinates(1.1, 2.2).to_s
  end
end
