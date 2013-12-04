#----------------------------------------------------------------------------
#          FILE:  answers.io
#   DESCRIPTION:  Seven Languages in Seven Weeks - Io - Day 1 Answers
#        AUTHOR:  Adam Walz <adam@adamwalz.net>
#       VERSION:  1.0.0
#----------------------------------------------------------------------------

# Evaluate 1 + 1 and then 1 + "one". Is Io strongly typed or weakly typed?
1+1 println
# ==> 2
#1+"one"
# ==> Exception: argument 0 to method '+' must be a Number, not a 'Sequence'
# Io is strongly typed because the Sequence "one" could not be coerced into a Number

# Is 0 true or false? What about the empty string? Is nil true or false?
(true and 0) println
# ==> true (0 is true)
(true and "") println
# ==> true (empty string is true)
(true and nil) println
# ==> false (nil is false)

# How can you tell what slots a prototype supports?
MyType := Object clone
MyType slotNames println

# What is the difference between = (equals), := (colon equals), and ::= (colon colon equals)?
# When would you use each one?
MyType description := "A Type I created" # creating and setting a new slot
MyType description = "A Type created by Adam Walz" # resetting an existing slot
MyType newSlot ::= "a new slot with a setter" # creates a slot, creates a setter, assigns to slot
MyType setNewSlot("this is using the setter for that slot")
