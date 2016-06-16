require 'json'
require 'net/http'

class PollenRequest
    def initialize(zip)
      @zip = zip
    end

    def pollen_count
      @zip
    end

end
