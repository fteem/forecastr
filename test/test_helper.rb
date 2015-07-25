require 'forecastr'
require 'minitest/autorun'
require 'minitest/unit'    
require "minitest/reporters"
require 'webmock/minitest'

include WebMock::API

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

def fixture_path
  File.expand_path('../fixtures', __FILE__)
end

def fixture(file)
  File.new(File.join(fixture_path, file))
end

def stub_get(path)
  stub_request(:get, path)
end

