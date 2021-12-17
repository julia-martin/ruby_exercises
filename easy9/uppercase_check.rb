def uppercase?(str)
  str.chars.all? do |char|
    if char =~ /[a-z]/i
      char =~ /[A-Z]/
    else
      true
    end
  end
end

puts uppercase?('t') == false
puts uppercase?('T') == true
puts uppercase?('Four Score') == false
puts uppercase?('FOUR SCORE') == true
puts uppercase?('4SCORE!') == true
puts uppercase?('') == true