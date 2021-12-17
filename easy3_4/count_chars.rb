puts 'Please write word or multiple words: '
words = gets.chomp

count = words.gsub(' ', '').size
puts "There are #{count} characters in \"#{words}\"."