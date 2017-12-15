require_relative 'services/weather_service.rb'

class CityWeatherio

  def weather_service
    WeatherService.new
  end

end
