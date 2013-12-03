#----------------------------------------------------------------------------
#          FILE:  hash_to_array.rb
#   DESCRIPTION:  Seven Languages in Seven Weeks - Ruby - Day 2 Exercises
#        AUTHOR:  Adam Walz <adam@adamwalz.net>
#       VERSION:  1.0.0
#----------------------------------------------------------------------------

# How would you translate a hash to an array?
person = {'first' => 'Adam', 'last' => 'Walz'}

# or with symbols
person = {:first => 'Adam', :last => 'Walz'}
# syntactic sugar when keys are always symbols
person = {first: 'Adam', last: 'Walz'}

person_array = person.to_a
puts person_array[0]
puts person_array[0][1] + ' ' + person_array[1][1]

# Can you translate arrays to hashes?
person_array = ['first', 'Adam', 'last', 'Walz']
person_hash = Hash[person_array.each_slice(2).to_a]
puts person_hash

# Can you iterate through a hash?
# Hashes enumerate their values in the order that the corresponding keys were inserted.
person_hash['initial'] = 'K'
person_hash.each_value { |val| puts val }
