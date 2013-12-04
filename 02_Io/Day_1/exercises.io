#----------------------------------------------------------------------------
#          FILE:  exercises.io
#   DESCRIPTION:  Seven Languages in Seven Weeks - Io - Day 1 Exercises
#        AUTHOR:  Adam Walz <adam@adamwalz.net>
#       VERSION:  1.0.0
#
# Execute the code in a slot given its name
#----------------------------------------------------------------------------
MyType := Object clone
MyType description := "A type created by Adam Walz"
MyType printDescription := method(description println)

MyType executeNamedSlot := method(name,
  perform(name)
)
MyType executeNamedSlot("printDescription")
