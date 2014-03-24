require 'spec_helper'

describe Forecastr::DataContainer do
  let(:json) { JSON.parse(fixture('skopje.json').read) }
  let(:container) { Forecastr::DataContainer.new(json) }

  it 'contains json results' do
    expect(container.city).to eq "Opština Karpoš"
    expect(container.longitude).to eq 21.43
    expect(container.latitude).to eq 42
    expect(container.temperature).to eq 283.85
    expect(container.pressure).to eq 1021
    expect(container.humidity).to eq 70
    expect(container.min_temperature).to eq 280.15
    expect(container.max_temperature).to eq 285.93
    expect(container.clouds).to eq 0
    expect(container.wind_speed).to eq 1.16
    expect(container.wind_angle).to eq 128.501
  end
end
