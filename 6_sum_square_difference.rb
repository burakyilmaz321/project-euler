=begin
    Project Euler
    Problem 6
    Sum Square Difference
    
    The sum of the squares of the first ten natural numbers is,
    
    12 + 22 + ... + 102 = 385
    The square of the sum of the first ten natural numbers is,
    
    (1 + 2 + ... + 10)2 = 552 = 3025
    Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
    
    Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
=end

def sum_of_squares(n)
  (1..n).map{ |i| i * i }.reduce(:+)
end

def square_of_sum(n)
  (1..n).reduce(:+) ** 2
end

def difference_between_square_of_sum_and_sum_of_squares(n)
  puts "#{square_of_sum(n)} - #{sum_of_squares(n)} = #{square_of_sum(n) - sum_of_squares(n)}"
end

difference_between_square_of_sum_and_sum_of_squares(100)
