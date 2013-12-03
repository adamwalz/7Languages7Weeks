#----------------------------------------------------------------------------
#          FILE:  access_files.rb
#   DESCRIPTION:  Seven Languages in Seven Weeks - Ruby - Day 2 Exercises
#        AUTHOR:  Adam Walz <adam@adamwalz.net>
#       VERSION:  1.0.0
#
# Find out how to access files with and without code blocks.
# What is the benefit of the code block?
#----------------------------------------------------------------------------

fname = 'hash_to_array.rb'

puts 'Opening file without block: needs explicit f.close'
f = File.open(fname, "r")
f.each { |line| puts line }
f.close

puts 'Opening file with block'
File.open(fname, "r").each do |line|
  puts line
end
