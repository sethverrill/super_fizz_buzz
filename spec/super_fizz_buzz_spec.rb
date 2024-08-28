require './lib/super_fizz_buzz'

RSpec.describe SuperFizzBuzz do
  before(:each) do
    @supfizbuz = SuperFizzBuzz.new
  end

  it 'exits' do    

    expect(@supfizbuz).to be_instance_of(SuperFizzBuzz)
  end

  it 'returns all elements' do

    expect(@supfizbuz.output(7)).to eq("Super")
    expect(@supfizbuz.output(5)).to eq("Buzz")
    expect(@supfizbuz.output(3)).to eq("Fizz")
    expect(@supfizbuz.output(105)).to eq("SuperFizzBuzz")
    expect(@supfizbuz.output(21)).to eq("SuperFizz")
    expect(@supfizbuz.output(35)).to eq("SuperBuzz")
    expect(@supfizbuz.output(15)).to eq("FizzBuzz")
    expect(@supfizbuz.output(2)).to eq(2)
  end
  
  it 'has range' do

    expect(@supfizbuz.output_range(7, 10)).to eq(["Super", 8, "Fizz", "Buzz"])
  end

end
    