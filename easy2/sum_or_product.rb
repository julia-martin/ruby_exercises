puts 'Please enter an integer greater than 0:'
num = gets.chomp.to_i
puts "Enter 's' to compute the sum, 'p' to compute the product."
op = gets.chomp

if op == 's'
  sum = (1..num).sum
  puts "The sum of the integers between 1 and #{num} is #{sum}."
elsif op == 'p'
  prod = (1..num).reduce(1) { |prod, num| prod * num }
  puts "The product of the integers between 1 and #{num} is #{prod}."
end