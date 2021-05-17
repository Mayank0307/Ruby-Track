# class Array
def arr_hash(arr)
    hash = Hash.new()
  
    # arr.sort_by! {|el| el.length}
    hash = hash.inject({:odd => [], :even => []}) do |a, b|
      a[:odd] << b[1] if b[0].odd?
      a[:even] << b[1] if b[0].even?
      a
    end
    hash
  end
# end
#   p ['abc', 'def', 1234, 234, 'abcd', 'x', 'mnop', 5, 'zZzZ'].arr_hash
input = gets.strip.gsub(/"|'|\[|\]/, "")
  arr = input.split(",")
  puts arr_hash(arr)
