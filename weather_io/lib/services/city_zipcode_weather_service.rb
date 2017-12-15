# require 'httparty'
# require 'json'
# require 'faker'
#
# class CityZipcodeWeatherService
#
#   attr_accessor :city_weather_data
#
#   def initialize
#
#     @city_weather_data = nil
#   end
#
#   include HTTParty
#
#   base_uri 'http://api.openweathermap.org/data/2.5/weather?zip='
#
#   def get_city_weather(zipcode)
#
#     @city_weather_data = JSON.parse(self.class.get("#{zipcode},gb&appid=1f5b7599165af5accbf90c45ba08f97f").body)
#
#   end
#
#   def get_city
#     cities = ['pe84ej', 'sw1v4qh', 'tw45xx', "ne11df", "ng11aj"]
#     city = cities[rand(4)]
#     get_city_weather(city)
#   end
#
#   def get_coord
#     get_city['coord']
#   end
#
#
#
# end
