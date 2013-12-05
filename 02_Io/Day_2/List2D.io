#----------------------------------------------------------------------------
#                FILE:  List2D.io
#   DESCRIPTION:  Seven Languages in Seven Weeks - Io - Day 2 Exercises
#          AUTHOR:  Adam Walz <adam@adamwalz.net>
#          VERSION:  1.0.0
#
# Write a prototype for a two-dimensional list.
# The dim(x, y) method should allocate a list of y lists that are x elements long.
# set(x, y, value) should set a value,
# and get(x, y) should return that value.
#
# Bonus: Write a transpose method so that
# (new_matrix get(y, x)) == matrix get(x, y) on the original list.
#
# Write the matrix to a file, and read a matrix from a file.
#----------------------------------------------------------------------------
List2D := List clone

List2D dim := method(x, y,
  self removeAll
  # create y lists of lists of size x (each element is nil)
  y repeat(self append(Range 1 to(x) asList map(nil)))
)

List2D set := method(x, y, value,
  self at(x) atPut(y, value)
)

List2D get := method(x,y, self at(x) at(y))

List2D transpose := method(
  transposedList := List2D clone
  transposedList dim(self size, self at(0) size)
  self foreach(y, subList,
    subList foreach(x, value,
      transposedList set(x, y, value)
    )
  )
  transposedList
)

List2D toFile := method(name,
    File with(name) open write(self serialized) close
)

List2D fromFile := method(name,
    doRelativeFile(name)
)

l := List2D clone
l dim(2,3)
l set(1,0,"hello")
l get(1,0) println
l println

transposedList := l transpose
transposedList println

fileName := "list.txt"
transposedList toFile(fileName)
fileList := List2D fromFile(fileName)
fileList println
