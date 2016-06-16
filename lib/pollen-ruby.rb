class PollenRuby

  def self.pollen_for(zip)
    req = PollenRequest.new(zip)
    req.pollen_count
  end

end

require 'pollen-ruby/pollen-request'
