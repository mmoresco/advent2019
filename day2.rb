inpt = File.read 'input2.txt'

memory = inpt.split(",").map! { |m| m.to_i }

def run(p, noun, verb)
  p = p.dup
  i = 0
  p[1] = noun
  p[2] = verb

  while p[i] != 99
    a = p[i + 1]
    b = p[i + 2]
    position = p[i + 3]
    
    if p[i] == 1
      p[position] = p[a] + p[b]
    else
      p[position] = p[a] * p[b]
    end

    i += 4
  end

  p[0]
end

# Part 1
puts run(memory, 12, 2)

# Part 2
0.upto(99) do |i|
  0.upto(99) do |j|
    if run(memory, i, j) == 19690720
      puts "#{100 * i + j}"
    end
  end
end

