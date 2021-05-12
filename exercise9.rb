# Exercise: 9 Array - Hash
# Create a method for Array that returns a hash having 'key' as the length of the element and value as an array of all the elements of that length. Make use of Array#each. Returned Hash should be sorted by key. Your program should accept command line arguments.

# Input argument: array-hash.rb "['abc','def',1234,234,'abcd','x','mnop',5,'zZzZ']"
# Output: {1=>["x", "5"], 3=>["abc", "def", "234"], 4=>["1234", "abcd", "mnop", "zZzZ"]}
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
# "['abc','def',1234,234,'abcd','x','mnop',5,'zZzZ']"
# [/input]
# [output]
# {1=>["x", "5"], 3=>["abc", "def", "234"], 4=>["1234", "abcd", "mnop", "zZzZ"]}
# [/output]

# ===

# [name]
# 3
# [/name]
# [input]
# "['hello','world',1,2,3,'good','bye']"
# [/input]
# [output]
# {1=>["1", "2", "3"], 3=>["bye"], 4=>["good"], 5=>["hello", "world"]}
# [/output]


def arr_hash(arr)
		hash = Hash.new()

		arr.sort_by! {|el| el.length}

		arr.each do |el|
			key = el.length
			if(hash[key])
				hash[key].push(el)
			else
				hash[key] = [el]
			end
		end
		hash
	end

	input = gets.strip.gsub(/"|'|\[|\]/, "")
	arr = input.split(",")
	puts arr_hash(arr)