# http://projecteuler.net/problem=10
#
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# 
# Find the sum of all the primes below two million.

require 'prime'

def find_sum_of_all_primes_below(num)
  sum = 0
  num.times do |n|
    sum += n if n.prime?
  end
  sum
end

answer = find_sum_of_all_primes_below 2000000
puts "Answer: #{answer}"
