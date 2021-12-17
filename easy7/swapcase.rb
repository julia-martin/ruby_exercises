def swapcase(str)
  letters = str.chars.map do |char|
    if char.upcase == char
      char.downcase
    elsif char.downcase == char
      char.upcase
    else
      char
    end
  end
  letters.join('')
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'