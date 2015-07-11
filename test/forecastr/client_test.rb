require 'test_helper'

class Forecastr::ClientTest < Minitest::Test
  def test_fetching_city_data_from_api
    stub_get("http://api.openweathermap.org/data/2.5/weather?q=London,UK").to_return(:body => fixture('london.json'), :headers => {:content_type => 'application/json; charset=utf-8'})
    results = Forecastr::Client.search_by_city('London,UK')

    assert_equal results.city, "London"
  end

  def test_fetching_coordinates_data_from_api
    stub_get("http://api.openweathermap.org/data/2.5/weather?lat=42.0&lon=21.4333").to_return(:body => fixture('skopje.json'), :headers => {:content_type => 'application/json; charset=utf-8'})
    results = Forecastr::Client.search_by_coordinates(42.0, 21.4333)

    assert_equal results.city, "Opština Karpoš"
  end

end
