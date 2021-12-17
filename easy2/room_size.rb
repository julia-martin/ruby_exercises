puts "Enter the length of the room in feet:"
len = gets.chomp.to_f
puts "Enter the width of the room in feet:"
width = gets.chomp.to_f

sq_feet = (len * width).round(2)
sq_inches = (sq_feet * 144).round(2)
sq_centimeters = (sq_inches * 6.4516).round(2)
puts "The area of the room is #{sq_feet} square feet, (#{sq_inches} square inches, or #{sq_centimeters} square centimeters)."