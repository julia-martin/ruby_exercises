def find_anagrams(words)
  anagrams = []

  words.each do |current|
    next if anagrams.any? { |arr| arr.include?(current) }
    matches = [current]
    words.each do |word|
      if current != word && (current.chars.sort.join == word.chars.sort.join)
        matches << word
      end
    end
    anagrams << matches if matches.size > 1
  end

  anagrams
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
'flow', 'neon']
p find_anagrams(words)