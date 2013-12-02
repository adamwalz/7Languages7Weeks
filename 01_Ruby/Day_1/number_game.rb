#----------------------------------------------------------------------------
#          FILE:  number_game.rb
#   DESCRIPTION:  Seven Languages in Seven Weeks - Ruby - Day 1 Bonus Ex.
#        AUTHOR:  Adam Walz <adam@adamwalz.net>
#       VERSION:  1.0.0
#----------------------------------------------------------------------------

# Bonus problem:
# If you’re feeling the need for a little more,
# write a pro- gram that picks a random number.
# Let a player guess the number,
# telling the player whether the guess is too low or too high.
puts 'Pick a number between 1 and 10'
guess = gets.chomp.to_i
actual = rand(10) + 1
if guess < actual
  puts "Your number was too low, I chose #{actual}"
elsif guess > actual
  puts "Your number was too high, I chose #{actual}"
else
  puts "You win! You guessed correctly"
end
