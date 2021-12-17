MINS_IN_DAY = 24 * 60

def time_of_day(total_mins)
  if total_mins >= MINS_IN_DAY
    total_mins %= MINS_IN_DAY
  end

  while total_mins < 0
    total_mins += MINS_IN_DAY
  end

  hours, mins = total_mins.divmod(60)
  "#{hours.to_s.rjust(2, '0')}:#{mins.to_s.rjust(2, '0')}"
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"