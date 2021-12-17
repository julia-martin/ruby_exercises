puts 'What is your age?'
age = gets.chomp.to_i

puts 'At what age would you like to retire?'
retire_age = gets.chomp.to_i

diff = retire_age - age
current_year = Time.new.year
retire_year = current_year + diff

puts "It's #{current_year}. You will retire in #{retire_year}."
puts "You have only #{diff} years of work to go!"