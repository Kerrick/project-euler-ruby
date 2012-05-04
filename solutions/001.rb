# http://projecteuler.net/problem=1
#
# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

def is_multiple?(num, divisors)
  answer = false
  divisors.each do | i |
    if (num.modulo(i) == 0)
      answer = true
    end
  end
  answer
end

def sum_of_multiples(min, max, divisors)
  total = 0
  min.upto(max) do | i |
    num = min + i
    if (is_multiple?(num, divisors))
      total += num
    end
  end
  total
end

puts "Answer: #{sum_of_multiples(1, 999, [3, 5])}"
