def ascii_value(str)
  str.chars.map { |char| char.ord }.inject(0) { |sum, n| sum + n }
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0