require 'spec_helper'

describe CityIdWeatherService do
  context 'requesting information on city weather works correctly' do

    before(:all) do
      @city_weather = CityWeatherio.new.city_id_weather_service
    end

    it "should have coord be hash" do
      expect(@city_weather.get_coord).to be_kind_of(Hash)
    end

    it 'should have lat as float' do

    end



end
