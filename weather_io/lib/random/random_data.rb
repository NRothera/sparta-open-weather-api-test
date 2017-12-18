require 'yaml'
require 'json'


class GetIdData

  attr_accessor :random_data, :random_json_data, :random_number

  def initialize
    @random_number = rand(200)
    @random_json_data = nil
    @random_data = nil
  end

  def get_yaml_city_weather
    @random_data = YAML.load_file('lib/random/city_id.yml')
  end

  def get_json_countries
    @random_json_data = JSON.parse(File.read('lib/random/iso_country_data.json'))
  end


  def get_random_id
    get_yaml_city_weather[rand(22300)]
  end

  def select_random_country
    get_json_countries
    @random_json_data[@random_number]
  end

  def get_random_city_name
    select_random_country['CapitalName']
  end

  def get_random_country_code
    select_random_country['CountryCode']
  end

  def get_lat_and_lon
    longitude = select_random_country['CapitalLatitude']
    latitude = select_random_country['CapitalLongitude']
    return longitude, latitude
  end


end
