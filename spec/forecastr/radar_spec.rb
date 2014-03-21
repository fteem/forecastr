require 'spec_helper'

describe Forecastr::Radar do
  let(:radar) { Forecastr::Radar.new }

  it 'finds forecast for city' do
    stub_get("http://api.openweathermap.org/data/2.5/weather?q=London,UK").to_return(:body => fixture('london.json'), :headers => {:content_type => 'application/json; charset=utf-8'})

    forecast = radar.find_by_city("London,UK")

    expect(forecast.city).to eq "London"
    expect(forecast.temperature.to_celsius).to eq 7.64
    expect(forecast.humidity).to eq 70
    expect(forecast.pressure).to eq 1001
  end


  it 'finds forecast by coordinates' do
    stub_get("http://api.openweathermap.org/data/2.5/weather?lat=42.0&lon=21.4333").to_return(:body => fixture('skopje.json'), :headers => {:content_type => 'application/json; charset=utf-8'})

    forecast = radar.find_by_coordinates(42.000, 21.4333)

    expect(forecast.city).to eq "Opština Karpoš"
    expect(forecast.temperature.to_celsius).to eq 10.7
    expect(forecast.humidity).to eq 70
    expect(forecast.pressure).to eq 1021
  end


end
