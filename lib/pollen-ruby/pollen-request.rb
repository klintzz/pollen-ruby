require 'json'
require 'httparty'

class PollenRuby::PollenRequest

    attr_accessor :uri, :zip_code

    def initialize(zip_code)
      @zip_code = zip_code
      @uri = URI("https://www.pollen.com/api/forecast/current/pollen/" + @zip_code.to_s)
       # make the first request
      get_response = HTTParty.get("https://www.pollen.com/")
      # set the cookie
      @cookie = set_cookie
    end

    def pollen_count
      puts @cookie
      response = HTTParty.get(@uri, headers: {'Cookies' => @cookie.to_cookie_string})
      JSON.parse(response)
    end


private

  def set_cookie
    cookie_hash = HTTParty::CookieHash.new
    cookie = "geo=94120; __gads=ID=d536173370dbb29a:T=1458796811:S=ALNI_Mai5vfLIDyXmageppFHDJeR0CytFg; ASP.NET_SessionId=3uxplfjys0hfjfr5gij3nxmw; _gat=1; search=94702; _ga=GA1.2.784544390.1458796811; session_depth=www.pollen.com%3D3%7C668625674%3D3"
    cookie.split("; ").each do |cookie|
      cookie_hash.add_cookies cookie
    end
    cookie_hash
  end

end
