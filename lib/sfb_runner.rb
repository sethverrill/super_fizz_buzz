require './lib/super_fizz_buzz'

class SFBRunner
  
  def initialize
    @sfb = SuperFizzBuzz.new
  end

  def start
    puts "Welcome to SuperFizzBuzz! Enter a number or a range... (ex: 15, or 8,15)"

    loop do
      puts ">>>"
      input = gets.chomp.strip

      break if input.downcase == 'exit'

      puts run_input(input)
      puts "Enter another number (or 'exit' to quit)"
    end
  end
  
  def run_input(input)
    if input.include?(',')
       start, finish = input.split(',').map(&:to_i)
      @sfb.output_range(start, finish).join(', ')
    else
      @sfb.output(input.to_i)
    end
  end
end
  run = SFBRunner.new
  run.start
