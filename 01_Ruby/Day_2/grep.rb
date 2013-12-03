#!/usr/bin/env ruby
#----------------------------------------------------------------------------
#          FILE:  grep.rb
#   DESCRIPTION:  Seven Languages in Seven Weeks - Ruby - Day 2 Exercises
#        AUTHOR:  Adam Walz <adam@adamwalz.net>
#       VERSION:  1.0.0
#
# Write a simple grep that will print the lines of a file
# having any occurrences of a phrase anywhere in that line.
# You will need to do a simple regular expression match
# and read lines from a file. (This is surprisingly simple in Ruby.)
# If you want, include line numbers.
#
# USAGE: grep.rb search_term filepath
#----------------------------------------------------------------------------

search_term = ARGV[0]
File.open(ARGV[1]) do |f|
  f.each { |line| puts line if line =~ /#{search_term}/ }
end
