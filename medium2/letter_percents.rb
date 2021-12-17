def letter_percentages(str)
  percents = {}
  total = str.size
  lowercase = str.chars.count { |char| char =~ /[a-z]/ }
  uppercase = str.chars.count { |char| char =~ /[A-Z]/ }
  neither = total - lowercase - uppercase

  percents[:lowercase] = 100.0 * lowercase / total
  percents[:uppercase] = 100.0 * uppercase / total
  percents[:neither] = 100.0 * neither / total
  percents
end

puts letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
puts letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
puts letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }