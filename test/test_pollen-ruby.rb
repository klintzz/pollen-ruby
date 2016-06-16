require 'minitest/autorun'
require 'pollen-ruby'

class PollenRubyTest < Minitest::Test

  def test_get_zip_code
    assert_equal 94702,
    PollenRuby::PollenRequest.new(94702).zip_code
  end

  def test_get_uri_host
    assert_equal URI("https://www.pollen.com").host,
    PollenRuby::PollenRequest.new(94702).uri.host
  end

  def test_get_pollen
    assert_equal Hash.new.class,
    PollenRuby.pollen_for(94702).class
  end

end