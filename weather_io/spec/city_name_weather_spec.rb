require 'spec_helper'

describe CityNameWeatherService do
  context 'requesting information on city weather works correctly' do

    before(:all) do
      @city_weather = CityWeatherio.new.city_name_weather_service


    end

    it "should have coord be hash" do
      expect(@city_weather.get_coord).to be_kind_of(Hash)
    end

  end



end
