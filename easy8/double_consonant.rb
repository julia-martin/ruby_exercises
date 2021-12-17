CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)
def double_consonants(str)
  new_str = ''
  str.chars.each do |char|
    if CONSONANTS.include?(char.downcase)
      new_str << char * 2
    else
      new_str << char
    end
  end
  new_str
end

puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""