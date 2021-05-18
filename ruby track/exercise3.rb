# Exercise: 3 - Fibonacci using Yield
# Write a program to print a Fibonacci series. Your program should accept a number input and output the Fibonacci series. Make use of yield in your program
# Sample inputs
# [name]
# 1
# [/name]
# [input]
# [/input]
# [output]
# Please provide an input
# [/output]

# ===

# [name]
# 2
# [/name]
# [input]
# 1000
# [/input]
# [output]
# 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987
# [/output]

# ===

# [name]
# 3
# [/name]
# [input]
# 150
# [/input]
# [output]
# 1 1 2 3 5 8 13 21 34 55 89 144 
# [/output]

# ===

# [name]
# 4
# [/name]
# [input]
# 1
# [/input]
# [output]
# 1 1
# [/output]

# ===


# [name]
# 5
# [/name]
# [input]
# 2
# [/input]
# [output]
# 1 1 2
# [/output]

# ===

# [name]
# 6
# [/name]
# [input]
# 3
# [/input]
# [output]
# 1 1 2 3
# [/output]

def fibonacci(number)
  n1 = 0
  n2 = 1
  while n2 <= number
    yield n2
    n1, n2 = n2, n1 + n2
 end
end

number = ARGV[0].to_i
fibonacci(number) { |n| puts "#{n} " }
