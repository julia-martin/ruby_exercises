class InvalidInputError < StandardError; end

class Minilang
  VALID_COMMANDS = %w(PUSH ADD SUB MULT DIV MOD POP PRINT)

  attr_accessor :register, :stack
  attr_reader :commands

  def initialize(str)
    str.split.each do |comm|
      unless VALID_COMMANDS.include?(comm) || is_number(comm)
        raise InvalidInputError, "Invalid token: #{comm}"
      end
    end

    @commands = str.split
    @register = 0
    @stack = []
  end

  def eval
    commands.each do |command|
      case command
      when 'PUSH'
        self.stack << register
      when 'ADD'
        self.register += stack.pop
      when 'SUB'
        self.register -= stack.pop
      when 'MULT'
        self.register *= stack.pop
      when 'DIV'
        self.register /= stack.pop
      when 'MOD'
        self.register %= stack.pop
      when 'POP'
        puts 'Empty stack!' if stack.empty?
        self.register = stack.pop
      when 'PRINT'
        puts register
      else
        self.register = command.to_i
      end
    end
  end

  private

  def is_number(str)
    str.to_i.to_s == str
  end
end

Minilang.new('PRINT').eval
# 0

Minilang.new('5 PUSH 3 MULT PRINT').eval
# 15

Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# 5
# 3
# 8

Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# 10
# 5

Minilang.new('5 PUSH POP POP PRINT').eval
# Empty stack!

Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# 6

Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# 12

# Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# Invalid token: XSUB

Minilang.new('-3 PUSH 5 SUB PRINT').eval
# 8

Minilang.new('6 PUSH').eval
# (nothing printed; no PRINT commands)