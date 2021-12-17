ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

filtered = ages.reject do |name, age|
  age >= 100
end

puts filtered