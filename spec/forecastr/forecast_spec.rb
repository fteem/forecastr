require_relative '../spec_helper'

describe Forecastr::Forecast do
  let(:json) { JSON.parse(fixture('data.json').read) }
  let(:data) { Forecastr::DataContainer.new(json) }
  let(:forecast) { Forecastr::Forecast.new(data) }

  it 'has a city' do
    expect(forecast.city).to eq "Benghazi"
  end

  describe 'coordinates' do
    it 'has longitude' do
      expect(forecast.longitude).to eq 20.07
    end

    it 'has latitude' do
      expect(forecast.latitude).to eq 32.12
    end
  end

  describe 'current forecast' do
    describe 'temperatures' do
      context 'celsius' do
        it 'has current temperature' do
          expect(forecast.temperature.to_celsius).to eq 33.0
        end

        it 'has minimal temperature' do
          expect(forecast.min_temperature.to_celsius).to eq 32.85
        end

        it 'has maximal temperature' do
          expect(forecast.max_temperature.to_celsius).to eq 32.85
        end
      end
    end

    it 'has pressure' do
      expect(forecast.pressure).to eq 1013
    end

    it 'has humidity' do
      expect(forecast.humidity).to eq 44
    end

  end

  describe 'clouds' do
    it 'has cloud coverage in %' do
      expect(forecast.clouds).to eq 90
    end
  end

  describe 'wind' do
    it 'has speed in m/s' do
      expect(forecast.wind.speed).to eq "1 m/s"
    end

    it 'has direction' do
      expect(forecast.wind.direction).to eq "N"
    end
  end
end
