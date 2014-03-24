require 'spec_helper'

describe Forecastr::Client do
  describe '#search_by_city' do
    it 'gets data from API for city' do
      stub_get("http://api.openweathermap.org/data/2.5/weather?q=London,UK").to_return(:body => fixture('london.json'), :headers => {:content_type => 'application/json; charset=utf-8'})
      results = Forecastr::Client.search_by_city('London,UK')

      expect(results.city).to eq "London"
    end
  end

  describe '#search_by_coordinates' do
    it 'gets data from API by coordinates' do
      stub_get("http://api.openweathermap.org/data/2.5/weather?lat=42.0&lon=21.4333").to_return(:body => fixture('skopje.json'), :headers => {:content_type => 'application/json; charset=utf-8'})
      results = Forecastr::Client.search_by_coordinates(42.0, 21.4333)

      expect(results.city).to eq "Opština Karpoš"
    end
  end

end
