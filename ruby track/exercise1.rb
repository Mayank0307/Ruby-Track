# Exercise: 1 - Occurrence Hash
# Count the occurrences of various alphabet letters in an input string and store it in hash. Your ruby program should accept a string as an argument and display the hash as an output.
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
# "Hello World"
# [/input]
# [output]
# {"H"=>1, "e"=>1, "l"=>3, "o"=>2, "W"=>1, "r"=>1, "d"=>1} 
# [/output]

# ===

# [name]
# 3
# [/name]
# [input]
# password123
# [/input]
# [output]
# {"p"=>1, "a"=>1, "s"=>2, "w"=>1, "o"=>1, "r"=>1, "d"=>1} 
# [/output]

# ===

# [name]
# 4
# [/name]
# [input]
# @#goodbye*%
# [/input]
# [output]
# {"g"=>1, "o"=>2, "d"=>1, "b"=>1, "y"=>1, "e"=>1} 
# [/output]

input = ARGV[0]

def count_occurences(input)
  input.scan(/\w/).inject(Hash.new(0)){|h, c| h[c] += 1; h}
end
puts count_occurences(input)
