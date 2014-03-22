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
  london = Forecastr::Radar.find_by_coordinates(51.5072, 0.1275)
  london.temperature.to_celsius
  # => 18
```

Some methods:
```ruby
  skopje = Forecastr::Radar.find_by_coordinates(42.00, 21.4333)

  skopje.temperature.to_celsius
  # => 10
  skopje.temperature.to_farenheit
  # => 50
  skopje.humidity
  # => 45
  skopje.pressure
  # => 1002
  skopje.wind.direction
  # => NE
  skopje.wind.speed
  # => 3.2 m/s
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Author
Ile Eftimov <br> [website](http://eftimov.net) [twitter](http://twitter.com/fteem)
