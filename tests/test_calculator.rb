# tests/test_calculator.rb
require 'minitest/autorun'
require_relative '../calculator'

class TestCalculator < Minitest::Test
  def setup
    @calculator = Calculator.new
  end

  def test_add
    @calculator.add(5)
    assert_equal 5, @calculator.result
  end

  def test_subtract
    @calculator.subtract(3)
    assert_equal -3, @calculator.result
  end
end
