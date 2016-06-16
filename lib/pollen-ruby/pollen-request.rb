require 'json'

class PollenRuby::PollenRequest
    def initialize(zip)
      @zip = zip
      @uri = URI("https://www.pollen.com/api/forecast/current/pollen")
      @req = Net::HTTP::Get.new(@uri+zip.to_s)
    end

    def pollen_count
      return JSON.parse(@req.body)
    end
    
end