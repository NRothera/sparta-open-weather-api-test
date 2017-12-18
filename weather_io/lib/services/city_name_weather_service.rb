require 'httparty'
require 'json'
require 'faker'



class CityNameWeatherService

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

    def get_weather
      get_city['weather'][0]
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
      get_city['base']
    end

    def get_main
      get_city['main']
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
      get_city['visibility']
    end

    def get_wind_key
      get_city['wind']
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
      get_city['clouds']
    end

    def get_cloud_all
      get_clouds['all']
    end

    def get_dt
      get_city['dt']
    end

    def get_sys
      get_city['sys']
    end

    def get_sys_type
      if get_sys['type'].is_a? Integer
        return get_sys['type']
      else
        return nil
      end
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
      get_city['id']
    end

    def get_city_name
      get_city['name']
    end

    def get_city_cod
      get_city['cod']
    end



end
