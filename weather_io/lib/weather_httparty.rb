require_relative 'services/city_name_weather_service'
require_relative 'services/city_id_weather_service'
require_relative 'services/city_zipcode_weather_service'
require_relative 'services/city_long_lat_service'
require_relative 'services/city_name_country_code_service'

class CityWeatherio

  def city_name_weather_service
    CityNameWeatherService.new
  end

  def city_id_weather_service
    CityIdWeatherService.new
  end

  def city_zipcode_weather_service
    CityZipcodeWeatherService.new
  end

  def city_lon_lat_service
    CityLongLatWeatherService.new
  end

  def city_name_country_code
    CityNameCountryWeatherService.new
  end
end
