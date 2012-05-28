# http://projecteuler.net/problem=5
#
# 2520 is the smallest number that can be divided by
# each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is
# evenly divisible by all of the numbers from 1 to 20?

these = []
1.upto(20) {|i| these << i} # Easier than writing it out

puts "Answer: #{these.reduce(:lcm)}"
