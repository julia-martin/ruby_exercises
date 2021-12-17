def lights_on(n)
  lights = {}
  n.times do |i|
    lights[i + 1] = false
  end

  n.times do |round|
    lights.each_key do |num|
      lights[num] = !lights[num] if round == 0 || num % (round + 1) == 0
    end
  end
  lights.select { |k, v| v }.keys
end

p lights_on(5) # [1, 4]
p lights_on(10) # [1, 4, 9]