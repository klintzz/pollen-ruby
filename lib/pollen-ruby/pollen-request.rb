require 'json'
require 'net/http'
require 'open-uri'

class PollenRuby::PollenRequest

    attr_accessor :query, :zip_code

    def initialize(zip_code)
      @zip_code = zip_code
      @query = "https://www.pollen.com/api/forecast/current/pollen/" + @zip_code.to_s
      @uri = URI(@query)
    end

    def pollen_count
      response = Net::HTTP.get(@uri)
      JSON.parse(response.body)
    end

end
