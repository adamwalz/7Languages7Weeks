#----------------------------------------------------------------------------
#          FILE:  hello_world.rb
#   DESCRIPTION:  Seven Languages in Seven Weeks - Ruby - Day 1 Excercises
#        AUTHOR:  Adam Walz <adam@adamwalz.net>
#       VERSION:  1.0.0
#----------------------------------------------------------------------------

# Print the string "Hello, World"
puts 'Hello, World'

# For the string "Hello, Ruby," find the index of the word "Ruby".
puts 'Hello, Ruby'.index 'Ruby'

# Print your name 10 times
for i in 0..9 do puts 'Adam Walz' end

# Print the string "This is sentence number 1" where the 1 changes from 1 to 10
for i in 1..10 do
  puts "This is sentence number #{i}"
end
