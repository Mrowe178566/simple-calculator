class Calculator
  attr_reader :result

  def initialize
    @result = 0
  end

  def add(value1, value2)
    @result = value1 + value2
  end

  def subtract(value1, value2)
    @result = value1 - value2
  end

  def multiply(value1, value2)
    @result = value1 * value2
  end

  def divide(value1, value2)
    @result = value1 / value2
  end
end
