def word_sizes(str)
  str.split.each_with_object(Hash.new(0)) do |word, hash|
    hash[word.gsub(/[^a-z]/i, '').size] += 1
  end
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}