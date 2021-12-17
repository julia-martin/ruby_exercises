def compute(arg)
  if block_given?
    yield + arg
  else
    'Does not compute.'
  end
end

puts compute(2) { 5 + 3 } == 10
puts compute('c') { 'a' + 'b' } == 'abc'
puts compute(3) == 'Does not compute.'