require 'spec_helper'

describe Forecastr::Wind do
  let(:wind) { Forecastr::Wind.new(2.5, -37) }

  it 'has speed in m/s' do
    expect(wind.speed).to eq "2.5 m/s"
  end

  it 'has has direction' do
    expect(wind.direction).to eq "NNW"
  end
end
