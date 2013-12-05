#----------------------------------------------------------------------------
#                FILE:  average.io
#   DESCRIPTION:  Seven Languages in Seven Weeks - Io - Day 2 Exercises
#          AUTHOR:  Adam Walz <adam@adamwalz.net>
#          VERSION:  1.0.0
#
# Add a slot called myAverage to a list that computes the average of all the numbers in a list.
# What happens if there are no numbers in a list?
# (Bonus: Raise an Io exception if any item in the list is not a number.)
#----------------------------------------------------------------------------

List myAverage := method(
  if(self isEmpty, Exception raise("cannot take average of empty list"))
  avg := 0
  self foreach(num, if(num isKindOf(Number),
                                avg = avg + num,
                                Exception raise("all elements of list must be Number")
                              )
  )
  avg / (self size)
)

list(1,2,3,4,5,6,7) myAverage println
#list() myAverage
#list(1,2,3,4,5,6,7, "apple") myAverage
