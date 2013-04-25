# http://projecteuler.net/problem=10
#
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# 
# Find the sum of all the primes below two million.

require 'prime'
answer = Prime.each(2_000_000).inject(&:+)
puts "Answer: #{answer}"
