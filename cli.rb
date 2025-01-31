require_relative "calculator"

class CLI
  VALID_COMMANDS = ["add", "subtract", "multiply", "divide", "exit"]

  def run
    show_greeting
    start_loop
    show_closing
  end
  
  private

  def start_loop
    loop do
      command = get_command

      # Exit the loop if the command is "exit"
      break if command == "exit"

      if valid_command?(command)
        process_command(command)
      else
        show_invalid_command_message
      end
    end
  end

  def process_command(command)
    calculator = Calculator.new

    number1 = get_number("Enter the first number: ")
    number2 = get_number("Enter the second number: ")

    case command
    when "add"
      result = calculator.add(number1, number2)
      puts "\nResult: #{result}"
    when "subtract"
      result = calculator.subtract(number1, number2)
      puts "\nResult: #{result}"
    when "multiply"
      result = calculator.multiply(number1, number2)
      puts "\nResult: #{result}"
    when "divide"
      result = calculator.divide(number1, number2)
      puts "\nResult: #{result}"
    end

    puts "\n"
  end

  def valid_command?(command)
    VALID_COMMANDS.include?(command)
  end

  def show_greeting
    puts "\nThank you for using the Simple Calculator"
  end

  def show_closing
    puts "Thank you for using the Simple Calculator! Goodbye!"
  end

  def get_command
    puts "Choose a command (#{VALID_COMMANDS.join(", ")}):"
    print "-> "
    gets.chomp.downcase
  end

  def get_number(message)
    print message
    gets.chomp.to_f
  end

  def show_invalid_command_message
    puts "Invalid command. Please choose #{VALID_COMMANDS.join(", ")}."
  end
end
