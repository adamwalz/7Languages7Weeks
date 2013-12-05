#----------------------------------------------------------------------------
#          FILE:  sillyDivision.io
#   DESCRIPTION:  Seven Languages in Seven Weeks - Io - Day 2 Exercises
#        AUTHOR:  Adam Walz <adam@adamwalz.net>
#       VERSION:  1.0.0
#
# How would you change / to return 0 if the denominator is zero?
#----------------------------------------------------------------------------
OperatorTable

# Rename real division method so I can still use it in silly division
Number dividedBy := Number getSlot("/")

Number / = method(denom,
  if(denom==0, 0, self dividedBy(denom))
)

(8/2) println
(8/0) println
