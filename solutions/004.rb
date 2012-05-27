# http://projecteuler.net/problem=4
#
# A palindromic number reads the same both ways. The largest palindrome
# made from the product of two 2-digit numbers is 9009 = 91 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

class String
  def palindrome?
    self == self.reverse
  end
end

def palindromes_between_products(min, max)
  arr = []
  max.downto(min) do |i|
    max.downto(min) do |j|
      arr << i * j if (i * j).to_s.palindrome?
    end
  end
  arr
end

puts "Answer: #{palindromes_between_products(100, 999).max}"
