require 'httparty'
require 'json'
require 'faker'

class CityIdWeatherService

  attr_accessor :city_weather_data

  def initialize

    @city_weather_data = nil
  end

  include HTTParty

  base_uri 'http://api.openweathermap.org/data/2.5/weather?id='

  def get_city_weather(id)

    @city_weather_data = JSON.parse(self.class.get("#{id}&appid=1f5b7599165af5accbf90c45ba08f97f").body)

  end

  def get_city
    cities = ['2638976', '7294483', '7294581', "7292321", "2634341"]
    city = cities[rand(4)]
    get_city_weather(city)
  end

  def get_coord
    get_city['coord']
  end

  def get_coord_lat
    get_coord['lat']
  end

  def get_coord_lon
    get_coord['lon']
  end



end
