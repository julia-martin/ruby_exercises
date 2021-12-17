class Cat
  @@count = 0

  def self.total
    puts @@count
  end

  def initialize
    @@count += 1
  end
end

kitty1 = Cat.new
kitty2 = Cat.new

Cat.total