# http://projecteuler.net/problem=3
#
# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

require 'prime'

def find_prime_factors(num)
  arr = [1]
  if num.prime? # Already prime. Don't bother.
    arr = [num]
  else
    n = 2
    until arr.flatten.reduce(:*) == num
      if num % n == 0 # Factor.
        if n.prime? # Prime factor.
          arr << n
        end
        if (num / n).prime? # Its pair is a prime.
          arr << num / n
        else # Its pair is not a prime. Recurse.
          arr << find_prime_factors(num / n)
        end
      end
      n += 1
    end
  end
  arr.flatten.delete_if {|i| i == 1} # 1 isn't prime, but it made this function easier.
end

puts "Answer: #{find_prime_factors(600851475143).max}"
