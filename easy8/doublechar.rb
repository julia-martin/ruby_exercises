def repeater(str)
  new_str = ''
  str.chars.each do |char|
    new_str << char * 2
  end
  new_str
end

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''