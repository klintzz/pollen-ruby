require 'minitest/autorun'
require 'pollen-ruby'

class PollenRubyTest < Minitest::Test

  def test_get_zip_code
    assert_equal 94702,
    PollenRuby::PollenRequest.new(94702).zip_code
  end

  def test_get_query
    assert_equal "https://www.pollen.com/api/forecast/current/pollen/94702",
    PollenRuby::PollenRequest.new(94702).query
  end

end