# Exercise: 12 Character Count - Ranges
# Write a method that returns the no of various lowercase, uppercase, digits and special characters used in the string. Make use of Ranges.
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
# "heLLo Every1"
# [/input]
# [output]
# Lowercase characters = 7
# Uppercase characters = 3
# Numeric characters = 1
# Special characters = 1


def frequency(s)
    lower_case = 0
    upper_case = 0
    digits = 0
    special_character = 0
    res =[]
 
    s.each do |i|

        if ('a'..'z').include?(i)
            lower_case +=1
        elsif ('A'..'Z').include?(i)
            upper_case += 1
        elsif ('0'..'9').include?(i)
            digits +=1
        else
            special_character += 1
        end
    end
    res << lower_case << upper_case << digits << special_character
end
s=gets.chomp.split("")
char_arr = frequency(s)
puts "Lowercase characters = #{char_arr[0]}"
puts "Uppercase characters = #{char_arr[1]}"
puts "Numeric characters = #{char_arr[2]}"
puts "Special characters = #{char_arr[3]}"
