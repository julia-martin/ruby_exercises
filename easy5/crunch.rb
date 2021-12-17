def crunch(str)
  new_str = ''
  str.chars.each do |char|
    new_str << char if new_str == '' || new_str[-1] != char
  end
  new_str
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''