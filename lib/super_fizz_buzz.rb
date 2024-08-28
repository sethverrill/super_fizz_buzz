# Iterate through the numbers 1 to 1000
# For each one, print the output according to the rules of Super Fizz Buzz
def super_fizz_buzz
  (1..1000).map do |num|
    sup = (num % 7 == 0)
    buzz = (num % 5 == 0)
    fizz = (num % 3 == 0)
    if sup && buzz && fizz
      "SuperFizzBuzz"
    elsif
      sup && fizz
      "SuperFizz"
    elsif
      sup && buzz
      "SuperBuzz"
    elsif
      fizz && buzz
      "FizzBuzz"
    elsif 
      sup
      "Super"
    elsif
      buzz
      "Buzz"
    elsif
      fizz
      "fizz"
    else
      num
    end
  end
end

puts super_fizz_buzz