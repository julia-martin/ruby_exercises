def balanced?(str)
  flag = 0
  str.chars.each do |char|
    case char
    when '(' then flag += 1
    when ')' then flag -= 1
    end
    return false if flag < 0
  end
  return flag == 0
end

puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false
puts balanced?('What ((is))) up(') == false