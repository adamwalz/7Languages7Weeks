#----------------------------------------------------------------------------
#          FILE:  fibonacci.io
#   DESCRIPTION:  Seven Languages in Seven Weeks - Io - Day 2 Exercises
#        AUTHOR:  Adam Walz <adam@adamwalz.net>
#       VERSION:  1.0.0
#
# A Fibonacci sequence starts with two 1s.
# Each subsequent number is the sum of the two numbers that came before:
# 1, 1, 2, 3, 5, 8, 13, 21, and so on.
# Write a program to find the nth Fibonacci number. fib(1) is 1, and fib(4) is 3.
# As a bonus, solve the problem with recursion and with loops.
#----------------------------------------------------------------------------
Fibonacci := Object clone

Fibonacci fibLoop := method(n,
  a := 0; b := 1; val := 0
  for(i, 2, n,
    val = a + b
    a = b
    b = val
  )
  if(n==0, a, if(n==1, b, val))
)

Fibonacci fibRecursive := method(n,
  if(n==0, 0, if(n==1, 1, fibRecursive(n-1) + fibRecursive(n-2)))
)

Fibonacci fibTailRecursive := method(n,
  fibInnner := method(a, b, n,
    if(n==0, a, if(n==1, b, fibInnner(b, a+b, n-1)))
  )
  fibInnner(0, 1, n)
)

Fibonacci fibLoop(1476) println # max fib before overflow (almost instant)
Fibonacci fibRecursive(8) println # 35 is about the max time I wanted to wait
Fibonacci fibTailRecursive(1476) println
