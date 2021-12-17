DEGREE = "\xC2\xB0"

def dms(angle)
  degrees = angle.to_i
  remaining = (angle - degrees) * 60
  minutes = remaining.to_i
  seconds = (remaining - minutes) * 60
  %(#{degrees}#{DEGREE}#{format('%02d', minutes)}'#{format('%02d', seconds)}")
end

puts dms(30) # == %(30°00'00")
puts dms(76.73)#  == %(76°43'48")
puts dms(254.6)#  == %(254°36'00")
puts dms(93.034773) #== %(93°02'05")
puts dms(0) #== %(0°00'00")
puts dms(360) #== %(360°00'00") || dms(360) == %(0°00'00")