def string_to_integer(str)
  digits = str.chars.map { |d| d.ord - 48 }.reverse
  number = 0
  place = 1

  digits.each do |d|
    number += (d * place)
    place *= 10
  end
  number
end

def string_to_signed_integer(str)
  if str.start_with?('-')
    -1 * string_to_integer(str[1..-1])
  elsif str.start_with?('+')
    string_to_integer(str[1..-1])
  else
    string_to_integer(str)
  end
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100