puts "Please provide an input"
input_string = gets.chomp 
class String
  def palindrome?
    self == self.reverse
  end
end

if input_string == ''
  puts 'Please provide an input'
  input_string = gets.chomp
end
if input_string.palindrome?
  puts 'Input string is a palindrome'
else
  puts 'Input string is not a palindrome'
end
