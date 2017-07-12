require 'prime'

def triangular(n)
    n * (n + 1) / 2
end

def triangular_divisors(n)
    a = Prime.prime_division(triangular(n))
    len = a.length - 1
    divisors = 1
    for i in 0..len do
        divisors *= (a[i][1] + 1)
    end
    return divisors
end

div = 0
i = 0
until div > 500 do
   i += 1
   div = triangular_divisors(i)
end

puts "#{i}th triangular number is #{triangular(i)} and it has #{triangular_divisors(i)} divisors. " +
     "It is the first triangular number which has more than 500 divisors."