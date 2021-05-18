# n=gets.to_i
# def prime(n)
#   array=[]
#     (1..n).step(2) do |num|
#         if num>1
#              (2..Math.sqrt(n)).each do |i|
#                 if num%i==0
#                     break
#                 else
#                     array << num
#                 end
#             end
#         end
#     end
#     puts array
# end
# puts prime(n)

def sieve(max)
  sieve = []
  (2..max).each { |i| sieve[i] = i }
  (2..Math.sqrt(max)).each do |i|
    (i*i).step(max, i) { |j| sieve[j] = nil } if sieve[i]
  end
  sieve.compact
end
max=gets.to_i
puts sieve(max)
