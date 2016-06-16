require 'minitest/autorun'
require 'pollen-ruby'

class PollenRubyTest < Minitest::Test
  def test_get_zip
    assert_equal 94702,
    PollenRuby.pollen_for(94702)
  end
end