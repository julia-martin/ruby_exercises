require 'date'

def friday_13th(year)
  count = 0
  12.times do |m|
    date = Date.new(year, m + 1, 13)
    count += 1 if date.friday?
  end
  count
end

puts friday_13th(2015) == 3
puts friday_13th(1986) == 1
puts friday_13th(2019) == 2