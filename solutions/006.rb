# http://projecteuler.net/problem=6
#
# The sum of the squares of the first ten natural numbers is,
#     1^2 + 2^2 + ... + 10^2 = 385
#
# The square of the sum of the first ten natural numbers is,
#     (1 + 2 + ... + 10)^2 = 55^2 = 3025
#
# Hence the difference between the sum of the squares of
# the first ten natural numbers and the square of the sum is 3025  385 = 2640.
#
# Find the difference between the sum of the squares of
# the first one hundred natural numbers and the square of the sum.

these = []
1.upto(100) {|i| these << i} # Easier than writing it out

sum_of_squares = these.reduce {|sum, n| sum += n * n}
square_of_sums = these.reduce(:+) * these.reduce(:+)

puts "Answer: #{square_of_sums - sum_of_squares}"
