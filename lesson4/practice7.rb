statement = "The Flintstones Rock"
counts = {}

statement.split('').each do |char|
  counts[char] = (counts[char] || 0) + 1
end

puts counts