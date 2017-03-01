require 'minitest/autorun'
require 'modernRoman'

# TestModernRoman
class TestModernRoman < MiniTest::Test

# Create test to make sure input_test works.
  def test_input
    input = ModernRoman.new
    assert_equal(true, input.input_test("1"), "This should have passed true; the input (1) is within bounds.")
    assert_equal(true, input.input_test("1117"), "This should have passed true; the input (1117) is within bounds.")
    assert_equal(true, input.input_test("4999"), "This should have passed true; the input (4999) is within bounds")
    assert_equal(false,input.input_test("0"), "This should have passed false; 0 is out of bounds.")
    assert_equal(false,input.input_test("5000"), "This should have passed false; 5000 is out of bounds.")
    assert_equal(false,input.input_test("1a44"), "This should have passed false; 1a44 contains a letter.")
  end

# Test number to Roman Numeral conversion
  def test_number
    number = ModernRoman.new
    assert_equal("IV",number.convert_to_roman(4), "The Roman Numeral should be IV.")
    assert_equal("XIV",number.convert_to_roman(14), "The Roman Numeral should be XIV.")
    assert_equal("CDXI",number.convert_to_roman(411), "The Roman Numeral should be CDXI.")
    assert_equal("MCXVII",number.convert_to_roman(1117), "The Roman Numeral should be MCXVII.")
    assert_equal("MMMMCMXCIX",number.convert_to_roman(4999), "The Roman Numeral should be MMMMCMXCIX.")
  end
  
end