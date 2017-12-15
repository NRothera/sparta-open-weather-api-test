require_relative 'services/city_name_weather_service'
require_relative 'services/city_id_weather_service'
require_relative 'services/city_zipcode_weather_service'

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

end
