require 'httparty'
require 'json'
require 'faker'

class WeatherService

  attr_accessor :city_weather_data

  def initialize

    @city_weather_data = nil
  end

  include HTTParty

  base_uri 'http://api.openweathermap.org/data/2.5/weather?q='

  def get_city_weather(city)

    @city_weather_data = JSON.parse(self.class.get("#{city}&appid=1f5b7599165af5accbf90c45ba08f97f").body)

  end

  def get_city
    cities = ['London', 'Birmingham', 'Peterborough', "Cambridge", "Nottingham"]
    city = cities[rand(4)]
  end

  def print_data
    @city_weather_data
  end

end
