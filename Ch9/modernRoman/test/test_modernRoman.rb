require 'minitest/autorun'
require 'modernRoman'

# This is an example
class TestScanner < MiniTest::Unit::TestCase

    def test_initial_scan
        s = Scanner.new
        assert_equal(s.scan, 1, "The initial scan should be 1") 
    end

end