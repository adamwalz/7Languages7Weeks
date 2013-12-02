#----------------------------------------------------------------------------
#          FILE:  hello_world.rb
#   DESCRIPTION:  Seven Languages in Seven Weeks - Ruby - Day 1 Exercises
#        AUTHOR:  Adam Walz <adam@adamwalz.net>
#       VERSION:  1.0.1
#----------------------------------------------------------------------------

# Print the string "Hello, World"
puts 'Hello, World'

# For the string "Hello, Ruby," find the index of the word "Ruby".
puts 'Hello, Ruby'.index 'Ruby'

# Print your name 10 times
for i in 0..9 do puts 'Adam Walz' end
# Strings can also be 'multiplied' to get repetitive string concatenation
puts 'Adam Walz ' * 10
# Or using blocks
10.times { puts "Adam Walz" }

# Print the string "This is sentence number 1" where the 1 changes from 1 to 10
for i in 1..10 do
  puts "This is sentence number #{i}"
end

# Or using blocks
(1..10).each { |i| puts "This is sentence number #{i}" }

# Typical Ruby convention is to use braces when your code block is on one line
# and use the do/end form when the code blocks span more than one line.
1.upto(10) do |i|
  puts "This is sentence number #{i}"
end
