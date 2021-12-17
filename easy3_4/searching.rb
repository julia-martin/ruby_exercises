labels = ['1st', '2nd', '3rd', '4th', '5th', 'last']
numbers = []

labels.each do |count|
  puts "Enter the #{count} number"
  num = gets.chomp.to_i
  if count != 'last'
    numbers << num
  else
    appears = numbers.include?(num)
    puts "The number #{num} #{appears ? 'appears' : 'does not appear'} in #{numbers}."
  end
end