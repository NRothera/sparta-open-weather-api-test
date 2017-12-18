require 'httparty'
require 'json'
require 'faker'
require_relative '../random/random_data'

class CityIdWeatherService < GetIdData

  attr_accessor :city_weather_data

  def initialize
    @city_weather_data = nil
  end

  include HTTParty

  base_uri 'http://api.openweathermap.org/data/2.5/weather?id='

  def get_city
    city_id = GetIdData.new
    random_id = city_id.get_random_id
    @city_weather_data = JSON.parse(self.class.get("#{random_id}&appid=4ca109896a7afd33ed7a2307f639920c").body)
  end

  def get_coord
    @city_weather_data['coord']
  end

  def get_coord_lat
    get_coord['lat']
  end

  def get_coord_lon
    get_coord['lon']
  end

  def get_weather
    @city_weather_data['weather'][0]
  end

  def get_weather_id
    get_weather['id']
  end

  def get_weather_main
    get_weather['main']
  end

  def get_weather_description
    get_weather['description']
  end

  def get_weather_icon
    get_weather['icon']
  end

  def get_base
    @city_weather_data['base']
  end

  def get_main
    @city_weather_data['main']
  end

  def get_main_temp
    get_main['temp']
  end

  def get_main_pressure
    get_main['pressure']
  end

  def get_main_humidity
    get_main['humidity']
  end

  def get_main_temp_min
    get_main['temp_min']
  end

  def get_main_temp_max
    get_main['temp_max']
  end

  def get_visibility
    @city_weather_data['visibility']
  end

  def get_wind_key
    @city_weather_data['wind']
  end

  def get_wind_speed
    get_wind_key['speed']
  end

  def get_wind_deg
    get_wind_key['deg']
  end

  def get_wind_gust
    get_wind_key['gust']
  end

  def get_clouds
    @city_weather_data['clouds']
  end

  def get_cloud_all
    get_clouds['all']
  end

  def get_dt
    @city_weather_data['dt']
  end

  def get_sys
    @city_weather_data['sys']
  end

  def get_sys_type
    get_sys['type']
  end

  def get_sys_id
   get_sys['id']
  end

  def get_sys_message
    get_sys['message']
  end

  def get_sys_country
    get_sys['country']
  end

  def get_sys_country_length
    get_sys_country.length
  end

  def get_sys_sunrise
    get_sys['sunrise']
  end

  def get_sys_sunset
    get_sys['sunset']
  end

  def get_city_id
    @city_weather_data['id']
  end

  def get_city_name
    @city_weather_data['name']
  end

  def get_city_cod
    @city_weather_data['cod']
  end
end
