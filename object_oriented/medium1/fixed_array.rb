class FixedArray
  def initialize(size)
    @size = size
    @elems = {}
    size.times do |i|
      elems[i] = nil
    end
  end

  def [](index)
    if index < 0 && index >= -size
      elems[size + index]
    elsif !elems.key?(index)
      raise IndexError
    else
      elems[index]
    end
  end

  def []=(index, obj)
    if index < 0 && index >= -size
      elems[size + index]
    elsif !elems.key?(index)
      raise IndexError
    else
      elems[index] = obj
    end
  end

  def to_a
    arr = Array.new(size)
    size.times do |i|
      arr[i] = elems[i]
    end
    arr
  end

  def to_s
    to_a.to_s
  end

  private

  attr_reader :size, :elems
end


fixed_array = FixedArray.new(5)
puts fixed_array[3] == nil
puts fixed_array.to_a == [nil] * 5

fixed_array[3] = 'a'
puts fixed_array[3] == 'a'
puts fixed_array.to_a == [nil, nil, nil, 'a', nil]

fixed_array[1] = 'b'
puts fixed_array[1] == 'b'
puts fixed_array.to_a == [nil, 'b', nil, 'a', nil]

fixed_array[1] = 'c'
puts fixed_array[1] == 'c'
puts fixed_array.to_a == [nil, 'c', nil, 'a', nil]

fixed_array[4] = 'd'
puts fixed_array[4] == 'd'
puts fixed_array.to_a == [nil, 'c', nil, 'a', 'd']

puts fixed_array.to_s == '[nil, "c", nil, "a", "d"]'

puts fixed_array[-1] == 'd'
puts fixed_array[-4] == 'c'

begin
  fixed_array[6]
  puts false
rescue IndexError
  puts true
end

begin
  fixed_array[-7] = 3
  puts false
rescue IndexError
  puts true
end

begin
  fixed_array[7] = 3
  puts false
rescue IndexError
  puts true
end