class Calculator
  def add(a, b)
    a + b
  end

  def subtract(a, b)
    a - b
  end
  
  def multiply(a, b)
    a * b
  end

  def divide(a, b)
    if b != 0
      a / b
    else
      "Error: Division by zero is not allowed"
    end
  end
end
