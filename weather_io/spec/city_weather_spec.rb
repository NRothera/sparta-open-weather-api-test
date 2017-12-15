require 'spec_helper'

describe WeatherService do
  context 'requesting information on city weather works correctly' do

    before(:all) do
      @city_weather = CityWeatherio.new.weather_service
      @data = @city_weather.get_city_weather(@city_weather.get_city)

    end

    it "should have coord be hash" do
      expect(@data['coord']).to be_kind_of(Hash)
    end

  end



end
