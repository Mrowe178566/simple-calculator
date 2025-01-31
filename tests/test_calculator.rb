# tests/test_calculator.rb
require 'minitest/autorun'
require_relative '../calculator'

class TestCalculator < Minitest::Test
  def setup
    @calculator = Calculator.new
  end

  def test_add
    @calculator.add(2, 3)
    assert_equal 5, @calculator.result
  end

  def test_subtract
    @calculator.subtract(5, 3)
    assert_equal 2, @calculator.result
  end

  def test_multiply
    @calculator.multiply(4, 2)
    assert_equal 8, @calculator.result
  end

  def test_divide
    @calculator.divide(10, 2)
    assert_equal 5, @calculator.result
  end
end
