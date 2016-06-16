require 'pollen-ruby/request'

class PollenRuby

  def self.get_pollen(zip)
    req = PollenRequest.new(zip)
    req.pollen_count
  end

end
