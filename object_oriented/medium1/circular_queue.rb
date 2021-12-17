class CircularQueue
  attr_reader :size
  attr_accessor :elems, :oldest, :newest

  def initialize(size)
    @size = size
    @elems = Array.new(size)
    @oldest = 0
    @newest = 0
  end

  def enqueue(elem)
    if elems.all? { |e| e.nil? }
      idx = 0
      elems[idx] = elem
      self.oldest = idx
    else
      idx = (newest + 1) % size
      self.oldest = idx + 1 unless elems[idx].nil?
      elems[idx] = elem
    end
    self.newest = idx
  end

  def dequeue
    return nil if elems.all? { |e| e.nil? }
    deleted = elems[oldest].clone
    elems[oldest] = nil
    self.oldest = (oldest + 1) % size
    return deleted
  end

  def to_s
    elems.to_s
  end
end

# queue = CircularQueue.new(3)
# puts queue.dequeue == nil

# queue.enqueue(1)
# queue.enqueue(2)
# puts queue.dequeue == 1

# queue.enqueue(3)
# queue.enqueue(4)
# puts queue.dequeue == 2

# queue.enqueue(5)
# queue.enqueue(6)
# queue.enqueue(7)

# puts queue.dequeue == 5
# puts queue.dequeue == 6
# puts queue.dequeue == 7
# puts queue.dequeue == nil

queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil