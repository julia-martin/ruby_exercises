def block_word?(word)
  blocks = %w['B:O' 'X:K' 'D:Q' 'C:P' 'N:A' 'G:T' 'R:E'
  'F:S' 'J:W' 'H:U' 'V:I' 'L:Y' 'Z:M']

  word.chars.each do |char|
    puts char.upcase
    block = blocks.find { |block| block.include?(char.upcase) }
    return false unless block
    blocks.delete(block)
  end
  true
end

puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true