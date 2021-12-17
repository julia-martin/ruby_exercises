class GuessingGame
  def initialize(low = 1, high = 100)
    size_of_range = high - low
    @guesses_left = Math.log2(size_of_range).to_i + 1
    @low = low
    @high = high
    @number = nil
  end

  def play
    @number = rand(@low..@high)
    loop do
      puts "You have #{@guesses_left} guesses remaining."
      puts "Enter a number between #{@low} and #{@high}:"
      guess = nil
      loop do
        guess = gets.chomp.to_i
        break if (@low..@high).cover?(guess)
        puts "Invalid guess. Enter a number between #{@low} and #{@high}:"
      end

      @guesses_left -= 1
      break if guess_result(guess) || @guesses_left == 0
    end

    puts 'You have no more guesses. You lost!' if @guesses_left == 0
  end

  def guess_result(guess)
    if guess < @number
      puts 'Your guess is too low.'
      puts ''
      false
    elsif guess > @number
      puts 'Your guess is too high.'
      puts ''
      false
    else
      puts "That's the number!\n"
      puts 'You Won!'
      true
    end
  end
end

game = GuessingGame.new(501, 1500)
game.play
