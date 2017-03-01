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
class TestModernRoman < MiniTest::Test

  def test_number
    number = ModernRoman.new
    assert_equal("IV",number.convert_to_roman(4), "The Roman Numeral should be IV.")
    assert_equal("XIV",number.convert_to_roman(14), "The Roman Numeral should be XIV.")
    assert_equal("CDXI",number.convert_to_roman(411), "The Roman Numeral should be CDXI.")
    assert_equal("MCXVII",number.convert_to_roman(1117), "The Roman Numeral should be MCXVII.")
    assert_equal("MMMXIV",number.convert_to_roman(4999), "The Roman Numeral should be MMMMCMXCIX.")
  end
  
end