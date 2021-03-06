def reverse_words(str)
  words = str.split
  reversed = words.map do |word|
    word.size >= 5 ? word.reverse : word
  end
  reversed.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS