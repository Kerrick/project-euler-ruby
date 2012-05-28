# http://projecteuler.net/problem=7
#
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13,
# we can see that the 6th prime is 13.
#
# What is the 10 001st prime number?

require 'prime'

num = 1
c = 0
prime = 2
until c == 10001
  if num.prime?
    prime = num
    c += 1
  end
  num += 1
end

puts "Answer: #{prime}"
