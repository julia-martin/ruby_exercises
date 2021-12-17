def titleize(str)
  words = str.split
  words = words.map { |w| w.capitalize }
  words.join(' ')
end

words = "the flintstones rock"
puts titleize(words)
