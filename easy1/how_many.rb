def count_occurrences(arr)
  counts = {}
  arr.each do |elem|
    counts[elem.downcase] = (counts[elem.downcase] || 0) + 1
  end

  counts.each do |k,v|
    puts "#{k} => #{v}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)