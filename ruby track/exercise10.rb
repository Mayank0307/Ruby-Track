# class Array
# def arr_hash(arr)
#     hash = Hash.new()
  
#     # arr.sort_by! {|el| el.length}
#     hash = hash.inject({:odd => [], :even => []}) do |a, b|
#       a[:odd] << b[1] if b[0].odd?
#       a[:even] << b[1] if b[0].even?
#       a
#     end
#     hash
#   end
# end
#   p ['abc', 'def', 1234, 234, 'abcd', 'x', 'mnop', 5, 'zZzZ'].arr_hash
def arr_hash(arr)
  count_hash = Hash.new()
  arr.each do |el|
    key = el.length
    if(count_hash[key])
      count_hash[key].push(el)
    else
      count_hash[key] = [el]
    end
  end
  odd_even(count_hash)
end

def odd_even(count_hash)
  part = Hash.new  
  count_hash.inject(0) { |hash,(k,v)| if k.odd? then (part["odd"] ||= []) << v  else  (part["even"] ||= []) << v end } 
  part
end

arr = ARGV[0].split(",")
puts arr_hash(arr)
