# http://projecteuler.net/problem=3
#
# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

require 'prime'

def find_factors(num)
  arr = []
  Math.sqrt(num).ceil.times do |n|
    if num % (n + 1) == 0
      arr << n + 1
      arr << num / (n + 1)
    end
  end
  arr
end

def find_largest_prime(arr)
  primes = []
  arr.each do |i|
    primes << i if i.prime?
  end
  primes.max
end

puts "Answer: #{find_largest_prime(find_factors(600851475143))}"
