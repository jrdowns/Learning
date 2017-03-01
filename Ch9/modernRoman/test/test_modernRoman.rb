require 'minitest/autorun'
require 'modernRoman'

=begin
class TestScanner < MiniTest::Unit::Test

    def test_initial_scan
        s = Scanner.new
        assert_equal(s.scan, 1, "The initial scan should be 1") 
    end

end
=end

# TestModernRoman
class TestModernRoman < MiniTest::Unit::Test

  def test_number
    number = modernRoman.new
    assert_equal(number.convert_to_roman,5, "The Roman Numeral should be IV.")
  end
end