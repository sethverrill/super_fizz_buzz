class SuperFizzBuzz

  def initialize
  end

  # Iterate through the numbers 1 to 1000
  # For each one, print the output according to the rules of Super Fizz Buzz
  def super_fizz_buzz(range = 1..1000)
    range.map do |num|
      sup = (num % 7 == 0)
      buzz = (num % 5 == 0)
      fizz = (num % 3 == 0)
      if sup && buzz && fizz
        "SuperFizzBuzz"
      elsif sup && fizz
        "SuperFizz"
      elsif sup && buzz
        "SuperBuzz"
      elsif fizz && buzz
        "FizzBuzz"
      elsif sup
        "Super"
      elsif buzz
        "Buzz"
      elsif fizz
        "Fizz"
      else
        num
      end
    end
  end

  def output(num)
    super_fizz_buzz(num..num).first
  end

  def output_range(num1, num2)
    super_fizz_buzz(num1..num2)
  end
end