# Exercise: 13 Factorial - Ranges
# Rewrite the factorial method using ranges. Your script should take a number from the command line and output the result on standard output

def fact(n)
  if n == 0
    return 1
  else
    (1..n).reduce(:*)
  end   
end
puts fact(ARGV[0].to_i)
