def uuid()
  hex = %w(0 1 2 3 4 5 6 7 8 9 a b c d e f)
  result = ''

  32.times do |num|
    if num == 8 || num == 13 || num == 18 || num == 23
      result += '-'
    else
      result += hex.sample
    end
  end

  result
end

puts uuid