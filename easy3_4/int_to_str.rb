DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(num)
  return '0' if num == 0
  str = ''
  while num > 0
    str.prepend(DIGITS[num % 10])
    num /= 10
  end
  str
end

def signed_integer_to_string(num)
  if num < 0
    '-' + integer_to_string(-num)
  elsif num > 0
    '+' + integer_to_string(num)
  else
    integer_to_string(num)
  end
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'