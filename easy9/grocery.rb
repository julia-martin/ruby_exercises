def buy_fruit(arr)
  groceries = []
  arr.each do |entry|
    entry.last.times do
      groceries << entry.first
    end
  end

  groceries
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
["apples", "apples", "apples", "orange", "bananas","bananas"]