def step(start, stop, step)
  while start <= stop
    yield(start)
    start += step
  end
  start
end

step(1, 10, 3) { |value| puts "value = #{value}" }