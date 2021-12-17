def century(year)
  century = (year - 1) / 100 + 1
  suffix =
    if (century % 100).between?(11, 13)
      'th'
    elsif century % 10 == 1
      'st'
    elsif century % 10 == 2
      'nd'
    elsif century % 10 == 3
      'rd'
    else
      'th'
    end
  century.to_s + suffix
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'