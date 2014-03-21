# Forecastr

A VERY minimal gem for openweathermap.org's API. Currently supports only current forecast - temperature, pressure, humidity, min/max temperatures and wind (speed and direction). 

## Installation

Add this line to your application's Gemfile:

    gem 'forecastr'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install forecastr

## Usage

You can search for forecast by city:
```ruby
  london = Forecastr::Radar.find_by_city("London,UK")
  london.temperature.to_celsius
  # => 18
```

Or, you can search for forecast by coordinates:
```ruby
  london = Forecastr::Radar.find_by_city(51.5072, 0.1275)
  london.temperature.to_celsius
  # => 18
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Author
Ile Eftimov <br> [website](http://eftimov.net) [twitter](http://twitter.com/fteem) 
