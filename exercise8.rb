# puts "array"
# array=gets 




# def power(arr, x)
#   arr.map{ |ele| ele**x }
# end

# arr = gets.chomp.split().map { |e| e.to_i }
# x = Integer(gets)
# # arr = ARGV.join(' ')
# # x = arr.split(']')
# # puts arr
# # puts x
# print power(arr, x)

def power(x)
  array = []
input = ' '
while input != ''
  input = gets.chomp
  array.push input
end

# if array.last == ""
#   array.pop
# end
array.delete("")
arr = array.map(&:to_i)
arr = arr.map{ |ele| ele**x }
  
  puts arr
  
end

power(3)


#filter method






