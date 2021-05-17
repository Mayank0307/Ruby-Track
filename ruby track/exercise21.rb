def fact(n)
  if n==0
    puts 1
  else
    (1..n).reduce(:*)
  end   
end

raise ArgumentError, "Negative number entered" if (ARGV[0].to_i < 0)
puts fact(ARGV[0].to_i)
