# http://projecteuler.net/problem=9
#
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#     a^2 + b^2 = c^2
#
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product a * b * c.

def find_pythagorean_triplet_by_sum(sum) #Brute force because I don't understand
  done = false                           #the math behind it well enough to come
  a, b, c = 1, 1, 1                      #up with a more elegant solution.
  until done == :error || done == true
    c += 1 if c < sum # Increment C first, because a < b < c
    if c >= sum && b < sum
      c = 0
      b += 1
    end
    if b >= sum && a < sum
      b = 0
      a += 1
    end
    done = true if a * a + b * b == c * c && a + b + c == sum
    done = :error if a >= sum && b >= sum && c >= sum
  end
  if done == :error
    puts "Error, could not find answer. Terminated at a = #{a}, b = #{b}, c = #{c}"
    return :error
  end
  [a, b, c]
end

answer = find_pythagorean_triplet_by_sum(1000)
puts "Answer: #{answer.reduce(:*)} (a = #{answer[0]}, b = #{answer[1]}, c = #{answer[2]})" unless answer == :error
