class Person
  def secret
    @secret
  end

  def secret=(s)
    @secret = s
  end
end
person1 = Person.new
person1.secret = 'Shh.. this is a secret!'
puts person1.secret