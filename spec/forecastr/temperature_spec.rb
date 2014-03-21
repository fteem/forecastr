require 'spec_helper'

describe Forecastr::Temperature do
  let(:temperature) { Forecastr::Temperature.new(306.11) }

  describe "formats" do
    it '#to_celsius' do
      expect(temperature.to_celsius).to eq 32.96
    end

    it '#to_farenheit' do
      expect(temperature.to_farenheit).to eq 91.33
    end
  end
end
