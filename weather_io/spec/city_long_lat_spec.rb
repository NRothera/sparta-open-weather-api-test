require 'spec_helper'

describe CityLongLatWeatherService do
  context 'requesting information on city weather works correctly' do

    before(:all) do
      @city_weather = CityWeatherio.new.city_lon_lat_service
      @city_weather.get_city
    end

    it "should have coord be hash" do
      expect(@city_weather.city_weather_data).to be_kind_of(Hash)
    end

    it 'should have lat as float' do
      expect(@city_weather.get_coord_lat).not_to be_kind_of(String)
    end

    it 'should have lon as float' do
      expect(@city_weather.get_coord_lon).not_to be_kind_of(String)
    end

    it 'should have lat between -180 and 180' do
      expect(@city_weather.get_coord_lat).to be_between(-180,180)
    end

    it 'should have lon between -180 and 180' do
      expect(@city_weather.get_coord_lon).to be_between(-180,180)
    end

    it 'should have weather id as an integer' do
      expect(@city_weather.get_weather_id).to be_kind_of(Integer)
    end

    it "should have weather main as kind of string" do
      expect(@city_weather.get_weather_main).to be_kind_of(String)
    end

    it "should have weather description as kind of string" do
      expect(@city_weather.get_weather_description).to be_kind_of(String)
    end

    it "should have weather icon as length of 3" do
      expect(@city_weather.get_weather_icon.length).to eql(3)
    end

    it 'should have base as a string' do
      expect(@city_weather.get_base).to be_kind_of(String)
    end

    it 'should have main temp as float' do
      expect(@city_weather.get_main_temp).to be_kind_of(Float)
    end

    it 'should have main temp above 0' do
      expect(@city_weather.get_main_temp).to be > 0
    end

    it 'should have main pressure below 2000' do
      expect(@city_weather.get_main_pressure).to be < 2000
    end

    it 'should have humidity as integer' do
      expect(@city_weather.get_main_humidity).not_to be_kind_of(String)
    end

    it 'should have humidity less than 100 and greater than 0' do
      expect(@city_weather.get_main_humidity).to be_between(0,100)
    end

    it 'should have temp_min as king of float' do
      expect(@city_weather.get_main_temp_min).to be_kind_of(Float)
    end

    it 'should have temp_max as kind of float' do
      expect(@city_weather.get_main_temp_max).to be_kind_of(Float)
    end

    it 'should have visibility as integer' do
      expect(@city_weather.get_visibility).to be_kind_of(Integer).or be_nil
    end

    it 'should have wind_speed above 0 and below 200' do
      expect(@city_weather.get_wind_speed).to be_between(0,200)
    end

    it 'should have win deg below 360 and above 0 or be nil' do
      expect(@city_weather.get_wind_deg).to be_between(0,360).or be_nil
    end

    it 'should have wind gust above 0 and below 200' do
      if @city_weather.get_wind_gust == nil
        expect(@city_weather.get_wind_gust).to be_nil
      else
        expect(@city_weather.get_wind_gust).to be_between(0,200)
      end
    end

    it 'should have cloud types to be below 120' do
      expect(@city_weather.get_cloud_all).to be < 120
    end

    it 'should have dt as an integer' do
      expect(@city_weather.get_dt).to be_kind_of(Integer)
    end

    it 'should have system type as integer or nil' do
      expect(@city_weather.get_sys_type).to be_kind_of(Integer).or be_nil
    end

    it 'should have system id as integer or nil' do
      expect(@city_weather.get_sys_id).to be_kind_of(Integer).or be_nil
    end

    it 'should have system message as float' do
      expect(@city_weather.get_sys_message).to be_kind_of(Float)
    end

    it 'should have system country as kind of String' do
      expect(@city_weather.get_sys_country).to be_kind_of(String)
    end

    it 'should have country length of two' do
      expect(@city_weather.get_sys_country_length).to eql(2)
    end

    it 'should have sunrise as integer' do
      expect(@city_weather.get_sys_sunrise).to be_kind_of(Integer)
    end

    it 'should have sunset as kind of integer' do
      expect(@city_weather.get_sys_sunset).to be_kind_of(Integer)
    end

    it 'should have city id as integer' do
      expect(@city_weather.get_city_id).to be_kind_of(Integer)
    end

    it 'should have city name as string' do
      expect(@city_weather.get_city_name).to be_kind_of(String)
    end

    it 'should have cod = 200' do
      expect(@city_weather.get_city_cod).to eql(200)
    end


  end



end
