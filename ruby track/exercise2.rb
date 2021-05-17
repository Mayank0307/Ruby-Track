# Exercise: 2 - Replace using Regex

# Ask the user to enter text. Replace each vowel in the text with a '*' using regular expression. Your program should accept a string as an argument and output the replaced string
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
# password123 
# [/input]
# [output]
# p*ssw*rd123 
# [/output]

# ===

# [name]
# 3
# [/name]
# [input]
# "good morning"
# [/input]
# [output]
# g**d m*rn*ng 
# [/output]

# ===

# [name]
# 4
# [/name]
# [input]
# "hello everyone"
# [/input]
# [output]
# h*ll* *v*ry*n* 
# [/output]

input = ARGV[0].downcase

def replace_string(input)
    input.gsub(/[aeiou]/,"*")
end
puts replace_string(input)
