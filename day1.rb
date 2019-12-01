inpt = File.read 'input1.txt'

modules = inpt.split("\n").map! { |m| m.to_i }

# Part 1
puts modules.sum { |m| m / 3 - 2 }

# Part 2
def calculate_fuel(mass)
  fuel = 0

  loop do
    mass = mass / 3 - 2
    if mass <= 0
        return fuel
    end
    fuel += mass
  end
end

puts modules.sum { |m| calculate_fuel(m) }
