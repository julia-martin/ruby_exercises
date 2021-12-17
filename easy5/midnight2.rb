MINUTES_IN_DAY = 1440

def get_minutes(time)
  hours, mins = time.split(':').map(&:to_i)
  total_mins = hours * 60 + mins
end

def after_midnight(time)
  total_mins = get_minutes(time)
  total_mins % MINUTES_IN_DAY
end

def before_midnight(time)
  total_mins = get_minutes(time)
  (MINUTES_IN_DAY - total_mins) % MINUTES_IN_DAY
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0